import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Downloadcard extends StatelessWidget {
  const Downloadcard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Container(
              alignment: Alignment.center,
              height: 36.82.h,
              width: 85.52.w,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius:BorderRadius.circular(20)
              ),
              child: Column(
                children: [
      
                  SizedBox(height:1.57.h),
                  
                  Image.asset('assets/download.png',
                  height: 17.96.h,
                  width: 58.23.w,
                  ),
      
                    SizedBox(height:1.44.h),
      
                  Text('Certificate Generating ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 11.66.sp,
                    fontWeight:FontWeight.w600,
                    color: Color(0xFF000000)
                  ),
                  ),
      
                    SizedBox(height:1.h),
      
                  Text('Please be patient your certificate will\nbe generated soon',
                  textAlign: TextAlign.center, 
                  style: GoogleFonts.poppins(
                    fontSize: 8.33.sp,
                    fontWeight: FontWeight.w400,
                    color:Color(0xFF000000)
                  ),
                  ),
      
                    SizedBox(height:1.49.h),
              
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
        
        
      ),
    );
  }
}