import 'package:cemp_certificate/dash.dart';
import 'package:cemp_certificate/firebase_options.dart';
import 'package:cemp_certificate/home/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

double width = 3.8;
double height = 8.5;
double fontsize = 1.2;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(CempCertificate());
}

class CempCertificate extends StatelessWidget {
  CempCertificate({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, Orientation, DeviceType) {
      return GetMaterialApp(
        home: Homepage(),
      );
    });
  }
}
