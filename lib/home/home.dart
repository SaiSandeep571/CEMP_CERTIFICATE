import 'dart:convert';

import 'package:cemp_certificate/home/Model/CertificateListModel.dart';
//import 'package:cemp_certificate/home/components/dialogbox.dart';
import 'package:cemp_certificate/home/components/eventcard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sizer/sizer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController searchID = TextEditingController();
  List CertificateList = [];

  ListCertifcates(String searchId) async {
    FirebaseFirestore db = FirebaseFirestore.instance;
    db
        .collection('certificate_list')
        .where("search_id", isEqualTo: searchId)
        .get()
        .then((value) {
      CertificateList.clear();
      for (var data in value.docs) {
        CertificateList.add(CertificateListModel.fromJson(data.data()));
      }
      setState(() {
        loading = false;
      });
    });
  }

  bool loading = false;
  bool showcard = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(3.64.h),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/background.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 4.94.h,
            ),
            Text(
              'Welcome to  CEMP\nE-Certificate',
              style: GoogleFonts.poppins(
                  fontSize: 20.83.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFFFFFF)),
            ),
            SizedBox(height: 2.h),
            Text(
              'Enter your search ID ?',
              style: GoogleFonts.poppins(
                  fontSize: 11.66.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF)),
            ),
            SizedBox(
              height: 1.05.h,
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    height: 5.76.h,
                    width: 85.78.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.41.h),
                      color: Color.fromRGBO(255, 255, 255, 0.26),
                    ),
                    child: TextField(
                      controller: searchID,
                      style: GoogleFonts.poppins(
                          fontSize: 11.66.sp,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(255, 255, 255, 0.42)),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(4.w),
                        hintText: 'Enter PRP***** code',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 11.66.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(255, 255, 255, 0.42)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        loading = true;
                      });
                      ListCertifcates(searchID.text);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 4.82.h,
                      width: 53.94.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.41.h),
                        color: Color.fromRGBO(255, 255, 255, 0.59),
                      ),
                      child: (loading)
                          ? LoadingAnimationWidget.staggeredDotsWave(
                              color: Colors.white, size: 24)
                          : Text(
                              'Get Certificate',
                              style: GoogleFonts.poppins(
                                  fontSize: 11.66.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFFFFFFF)),
                            ),
                    ),
                  ),
                  SizedBox(height: 1.52.h),
                  Text(
                    'Powered by',
                    style: GoogleFonts.poppins(
                        fontSize: 8.33.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF9FABB2)),
                  ),
                  Text(
                    'Dept of CSE',
                    style: GoogleFonts.poppins(
                        fontSize: 8.33.sp,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(255, 255, 255, 0.79)),
                  ),
                  SizedBox(
                    height: 1.76.h,
                  ),
                  Image.asset(width: 352, 'assets/line.png'),
                  SizedBox(
                    height: 1.88.h,
                  ),
                ],
              ),
            ),
            Text(
              'Your Certificate Dashboard',
              style: GoogleFonts.poppins(
                  fontSize: 13.33.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFFFFFF)),
            ),
            SizedBox(
              height: 1.h,
            ),
            Expanded(
              child: ListView(
                children: [
                  for (var data in CertificateList)
                    Eventcard(
                      model: data,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
