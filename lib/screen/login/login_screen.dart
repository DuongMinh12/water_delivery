import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:water_delivery/constants/add_all.dart';
import 'package:water_delivery/screen/screens.dart';
import 'package:water_delivery/widget/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String routeName = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    return buildScaffoldLoginResgis(
      context,
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back!',
                style: txt20w7,
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Please fill in your email password to login to your account.',
                style: txt14w4,
              ),
              Padding(
                padding: EdgeInsets.only(top: 39.h, bottom: 20.h),
                child: buildColumnTextFFWidget('Email', 'Password',
                    'Productionexperience@gmail.com', '******************'),
              ),
              Row(
                children: [
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                          color: colortxtOnboar),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 102.h, bottom: 8.h),
                child: buildElevatedButtonWidget('LOGIN'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t  have an account?', style: txt14w4,),
                  TextButton(onPressed: () {
                    Navigator.pushNamed(context, RegisterScreen.routeName);
                  },
                      child: Text(
                        'Sign UP', style: txt14w7!.copyWith(color: kMain),))
                ],
              )
            ],
          ),
        )
    );
  }
}

