import 'package:cemp_certificate/home/components/downloadcard.dart';
import 'package:cemp_certificate/home/components/eventcard.dart';
import 'package:flutter/material.dart';

class Diagolbox extends StatefulWidget {
  const Diagolbox({super.key});

  @override
  State<Diagolbox> createState() => _DiagolboxState();
}

class _DiagolboxState extends State<Diagolbox> {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap:() {
        showDialog(
          context: context, 
          builder: (context)=>AlertDialog(
            backgroundColor: Colors.transparent,
             surfaceTintColor: Colors.transparent,
              content: Downloadcard(),
          ),
          );
      },
    
    
    
    
    
    
    
    
      child: Eventcard(),
    );
  }
}