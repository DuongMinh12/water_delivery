import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:water_delivery/screen/screens.dart';
import 'package:water_delivery/widget/widgets.dart';

import '../../constants/add_all.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static String routeName = 'RegisterScreen';

  @override
  Widget build(BuildContext context) {
    return buildScaffoldLoginResgis(
      context,
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create your Account',
                style: txt20w7,
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Please fill in your details to create your account',
                style: txt14w4,
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.h, bottom: 20.h),
                child: Column(
                  children: [
                    buildColumnTextFFWidget('Name', 'Email',
                        'Product Experience', 'Productionexperience@gmail.com'),
                    SizedBox(height: 17.h,),
                    buildColumnTextFFWidget('Password', 'Confirm Password',
                        '******************', '******************'),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60.h, bottom: 8.h),
                child: buildElevatedButtonWidget('CREATE AN ACCOUNT'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Alreay have an account?', style: txt14w4,),
                  TextButton(onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                      child: Text(
                        'Sign in', style: txt14w7!.copyWith(color: kMain),))
                ],
              )
            ],
          ),
        )
    );
  }
}
