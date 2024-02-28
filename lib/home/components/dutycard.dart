import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Dutyleavecard extends StatelessWidget {
  const Dutyleavecard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 10.23.h,
            width: 28.68.w,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only(topRight: Radius.circular(1.17.h),bottomRight: Radius.circular(1.17.h)),
              color:const Color.fromRGBO(76, 58, 157, 0.36),
            ),
            child: Row(
              children: [
                SizedBox(width: 0.85.w,),
                RotatedBox(
                  quarterTurns: 135,
                  child: Text('DUTY LEAVE',
                  style: GoogleFonts.poppins(
                    fontSize: 7.5.sp,
                    fontWeight:FontWeight.w600,
                    color: Color.fromRGBO(255, 255, 255, 0.39),
                  ),
                  ),
                  ),
                  SizedBox(width: 0.85.w,),
                  RotatedBox(
                  quarterTurns: 135,
                  child:Image.asset('assets/line.png',width: 9.23.h,)
                  ),
                  
                 SizedBox(width: 2.5.w,),
    
                  
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      SizedBox(height: 0.5.h,),

                      Container(
                        alignment: Alignment.center,
                        height: 6.11.h,
                        width: 16.57.w,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.63),
                          borderRadius: BorderRadius.circular(1.17.h)
                        ),
                        child: Column(
                          children: [
                            Text('On',
                            style: GoogleFonts.poppins(
                              fontSize: 5.8.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF191352),
                              height: 0.2.h
                              ),
                            ),
                            Text('21,22',
                            style: GoogleFonts.poppins(
                              fontSize: 8.5.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF191352),
                              height: 0.15.h
                              ),
                            ),
                            Text('Mar - 2022',
                            style: GoogleFonts.poppins(
                              fontSize: 6.5.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF191352),
                              height: 0.15.h
                              ),
                            ),
                            Text('Hrs : I,II,III',
                            style: GoogleFonts.poppins(
                              fontSize: 5.5.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(31, 3, 3, 0.64),
                              height: 0.2.h
                              ),
                            )
                          ],
                        ),
                      ),
    
                      SizedBox(height: 0.3.h,),
                      
                      Text('Issue by',
                      style: GoogleFonts.poppins(
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(255, 255, 255, 0.39)
                      ),
                      ),
    
    
                      
                      Text('Faculty Name',
                      style: GoogleFonts.poppins(
                        fontSize: 6.66.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF191352)
                      ),
                      ),
                      
                    ],
                  )
                
              ],
            ),

        
      
    );


  }
}