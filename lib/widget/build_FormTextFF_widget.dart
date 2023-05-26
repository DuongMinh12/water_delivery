import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/add_all.dart';


/// text form field
TextFormField buildTextFormFieldWidget(String hinttxt) {
  return TextFormField(
    decoration: InputDecoration(
        hintText: hinttxt,
        contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 22.w),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
        )
    ),
  );
}
/// column form
Column buildColumnTextFFWidget(String title1, String title2, String hinttxt1, String hinttxt2) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title1, style: txt14w7,),
      SizedBox(height: 7.h,),
      buildTextFormFieldWidget(hinttxt1),
      SizedBox(height: 17.h,),
      Text(title2, style: txt14w7,),
      SizedBox(height: 7.h,),
      buildTextFormFieldWidget(hinttxt2),
    ],
  );
}