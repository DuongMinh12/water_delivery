import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:water_delivery/constants/add_all.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:water_delivery/models/product/product_model.dart';

import 'components/body_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: [
            BodyHomeScreen(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0.h, top: 60.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Cart', style: txt20w7,),
                        IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrow_left, size: 25.sp, color: kMain,))
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    height: 560.h,
                    width: double.infinity,
                    // color: Colors.blue,
                    child: ListView.builder(
                      itemCount: 5,
                        itemBuilder: (context, indext){
                      return buildRow();
                    }),
                  )
                ],
              ),
            ),
            Center(child: Text('3'),),
            Center(child: Text('4'),)
          ],
        ),
        bottomNavigationBar: TabBar(
          indicatorColor: kMain,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.symmetric(vertical: 5),
          tabs: [
            Tab(icon: Icon(CupertinoIcons.home, color: Colors.black,),),
            Tab(icon: Icon(CupertinoIcons.cart, color: Colors.black,),),
            Tab(icon: Icon(CupertinoIcons.heart, color: Colors.black,),),
            Tab(icon: Icon(CupertinoIcons.person, color: Colors.black,),),
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

Widget buildRow() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 80.h,
              width: 80.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(ProductModel.product[1].image.toString(),fit: BoxFit.cover,),
              ),
            ),
            SizedBox(width: 10.w,),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(ProductModel.product[1].name.toString()),
                Text('${ProductModel.product[1].price}.000 VND'),
              ],
            )
          ],
        ),
      ),
      Divider(thickness: 1,),
    ],
  );
}
