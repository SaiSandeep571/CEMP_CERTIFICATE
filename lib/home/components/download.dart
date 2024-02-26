import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Downloadcard extends StatefulWidget {
  const Downloadcard({super.key});

  @override
  State<Downloadcard> createState() => _DownloadcardState();
}

class _DownloadcardState extends State<Downloadcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
          alignment: Alignment.center,
          height: 47.64.h,
          width: 84.78.w,
          decoration: BoxDecoration(
            color: Color(0xFFE8ECFF),
            borderRadius:BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              Image.asset('assets/download.png'),
              Text('Certificate Generating ',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 11.66.sp,
                fontWeight:FontWeight.w600,
                color: Color(0xFF000000)
              ),
              ),
              Text('Please be patient your certificate will\nbe generated soon',
              textAlign: TextAlign.center, 
              style: GoogleFonts.poppins(
                fontSize: 8.33.sp,
                fontWeight: FontWeight.w400,
                color:Color(0xFF000000)
              ),
              ),
          
              Container(
                alignment: Alignment.center,
                height: 4.45.h,
                width: 51.02.w,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(47, 41, 119, 0.76),
                  borderRadius:BorderRadius.circular(1.17.h),
                ),
                child: Text('Download Now',
                style: GoogleFonts.poppins(
                  fontSize: 11.66.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF)
                ),
                ),
              ),
                     
            ],
          ),

    );
  }
}