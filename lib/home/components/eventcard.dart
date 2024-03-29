import 'package:cemp_certificate/home/Model/CertificateListModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Eventcard extends StatelessWidget {
  CertificateListModel model;
  Eventcard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          Container(
            height: 10.23.h,
            width: 92.10.w,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.5),
              borderRadius: BorderRadius.circular(1.17.h),
            ),
            child: Row(
              children: [
                Container(
                    alignment: Alignment.center,
                    height: 10.23.h,
                    width: 6.88.w,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.6),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(1.17.h),
                            bottomLeft: Radius.circular(1.17.h))),
                    child: RotatedBox(
                      quarterTurns: 135,
                      child: Text('${model.certificateId}',
                          style: GoogleFonts.poppins(
                              fontSize: 6.66.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF000000))),
                    )),
                SizedBox(
                  width: 1.53.w,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${model.eventName}',
                        style: GoogleFonts.poppins(
                            fontSize: 15.83.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF191352)),
                      ),
                      Text(
                        'Organizer : ${model.organizerName}',
                        style: GoogleFonts.poppins(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF191352)),
                      ),
                      Text(
                        'Issue Date : ${model.issueDate}',
                        style: GoogleFonts.poppins(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF191352)),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 10.23.h,
                  width: 7.63.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(1.17.h),
                        bottomRight: Radius.circular(1.17.h)),
                    color: const Color.fromRGBO(76, 58, 157, 0.36),
                  ),
                  child: RotatedBox(
                    quarterTurns: 135,
                    child: Text(
                      'NO DUTY LEAVE',
                      style: GoogleFonts.poppins(
                        fontSize: 7.sp,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(255, 255, 255, 0.39),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: .82.h),
        ],
      ),
    );
  }
}
