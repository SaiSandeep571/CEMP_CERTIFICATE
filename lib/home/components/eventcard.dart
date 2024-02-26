import 'package:cemp_certificate/home/components/duty.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Eventcard extends StatelessWidget {
  const Eventcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  borderRadius:BorderRadius.only(topLeft: Radius.circular(1.17.h),bottomLeft: Radius.circular(1.17.h))
                ),
                child:RotatedBox(
                  quarterTurns: 135,
                  child:  Text('CEMP#123',
                  style: GoogleFonts.poppins(
                    fontSize: 6.66.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000)
                  )
                  ),)
              ),
          
               SizedBox(width: 1.53.w,),
          
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('EVENT NAME ',
                    style: GoogleFonts.poppins(
                      fontSize: 15.83.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF191352)
                    ),
                    ),
                    Text('Organizer : Dept of CSE',
                    style: GoogleFonts.poppins(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF191352)
                    ),
                    ),
                    Text('Issue Date : 12 Mar 2023',
                    style: GoogleFonts.poppins(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF191352)
                    ),
                    )
                  ],
                ),
              ),

              Dutyleavecard()
              
              ],
            ),
          
        ),
         SizedBox(height:.82.h),
      ],
    );
  }
}