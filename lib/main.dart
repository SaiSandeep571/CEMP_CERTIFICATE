import 'package:cemp_certificate/dash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
 double width = 3.8;
 double height = 8.5;
 double fontsize = 1.2;

void main() {
  runApp(CempCertificate());
}

class CempCertificate extends StatelessWidget {
  CempCertificate({super.key});

  @override
  Widget build(BuildContext context) {
   return Sizer(builder: (context , Orientation ,DeviceType){
    return GetMaterialApp(home: Dashboard(),);
  });

  }
}
