import 'package:cemp_certificate/home/components/download.dart';
import 'package:cemp_certificate/home/components/duty.dart';
import 'package:cemp_certificate/home/components/eventcard.dart';
import 'package:cemp_certificate/home/home.dart';
import 'package:cemp_certificate/home/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            InkWell(
                onTap: () {
                  Get.to(()=>Login());
                },
                child: Text("Login",style: TextStyle(color: Colors.red),
                        ),
              ),

              SizedBox(height: 1.h,),
             InkWell(
                onTap: () {
                  Get.to(()=>Homepage());
                },
                child: Text("Home",style: TextStyle(color: Colors.red),
                        ),
              ),

              SizedBox(height: 1.h,),

              InkWell(
                onTap: () {
                  Get.to(()=>Downloadcard());
                },
                child: Text("Download card",style: TextStyle(color: Colors.red),
                        ),
              ),

              SizedBox(height: 1.h,),

              InkWell(
                onTap: () {
                  Get.to(()=>Eventcard());
                },
                child: Text("Event card",style: TextStyle(color: Colors.red),
                        ),
              ),         

              SizedBox(height: 1.h,),

              InkWell(
                onTap: () {
                  Get.to(()=>Dutyleavecard());
                },
                child: Text("Duty leave card",style: TextStyle(color: Colors.red),
                        ),
              ),              
          ],
        ),
      ),
    );
  }
}