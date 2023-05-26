import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:water_delivery/constants/add_all.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = 'splashScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMain,
      body: Center(
          child: SizedBox(
            width: 213.w,
            height: 221.h,
            child: Image.asset(logo)),
          ),
    );
  }
}