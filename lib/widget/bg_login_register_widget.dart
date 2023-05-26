import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/add_all.dart';

Widget buildScaffoldLoginResgis(BuildContext context, Widget child) {
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,
          color: kMain,
          size: 30.sp,
        ),
      ),
    ),
    body: SingleChildScrollView(child: child),
  );
}