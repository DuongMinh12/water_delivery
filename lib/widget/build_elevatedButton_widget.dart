import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/add_all.dart';

ElevatedButton buildElevatedButtonWidget(String title) {
  return ElevatedButton(
    onPressed: () {},
    child: Text(
      title,
      style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, fontFamily: 'Poppins'),
    ),
    style: ElevatedButton.styleFrom(
        minimumSize: Size(318.w, 60.h),
        backgroundColor: kMain
    ),);
}