import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:water_delivery/constants/add_all.dart';
import 'package:water_delivery/widget/widgets.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);
  static String routeName = 'onboardingScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 312.w,
              height: 312.h,
              child: Image.asset(womendrink),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.w),
              child: Text(
                'We provide best quality water ',
                style: txt24w7,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed',
                style: txt14w4,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 70.h,),
            buildElevatedButtonWidget('NEXT')
          ],
        ),
      ),
    );
  }
}
