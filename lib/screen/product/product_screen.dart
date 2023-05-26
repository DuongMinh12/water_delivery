import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:water_delivery/constants/add_all.dart';
import 'package:water_delivery/models/product/product_model.dart';
import 'package:water_delivery/screen/home/home_screen.dart';
import 'package:water_delivery/widget/build_elevatedButton_widget.dart';

import '../../widget/widgets.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);
  static String routeName = 'ProductScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 346.h,
                width: double.infinity,
                child: Image.asset(
                  ProductModel.product[1].image.toString(),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  top: 45.h,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                    icon: Icon(
                      CupertinoIcons.arrow_left,
                      size: 27.sp,
                      color: Colors.white,
                    ),
                  )),
              Positioned(
                  top: 55,
                  right: 10.w,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 45.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                          color: Color(0xff212121),
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(
                        CupertinoIcons.heart,
                        color: Colors.white,
                      ),
                    ),
                  )),
              Positioned(
                  bottom: 15.h,
                  right: 10.w,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 45.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(
                        CupertinoIcons.cart,
                        color: kMain,
                      ),
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 37.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Drips Spring water',
                      style: txt20w7!.copyWith(color: Colors.black),
                    ),
                    Text(
                      '(Available In Stock)',
                      style: txt12w4!.copyWith(color: colorgrey),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '${ProductModel.product[1].price}.000 VND',
                      style:
                          txt14w4!.copyWith(fontSize: 19, color: Colors.black),
                    ),
                    Spacer()
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 11.h, bottom: 9.h),
                  child: Text(ProductModel.product[1].decription.toString(),
                      style: txt12w4!.copyWith(color: Colors.black)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.star_fill,
                          color: colorstar,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0.w, right: 10.w),
                          child: Text(
                            ProductModel.product[1].rate.toString(),
                            style: txt14w5!.copyWith(color: Colors.black),
                          ),
                        ),
                        Text(
                          '(128 reviews)',
                          style: txt12w4!.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 23.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [Text('Bottle size'), DropdownProduct()],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Quantity'),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                buildElevatedButton(
                                  '-',
                                  Color(0xffF8F5F5),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 24.w),
                                  child: Text('1'),
                                ),
                                buildElevatedButton(
                                  '+',
                                  Color(0xffE3E3E3),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 27.h,
                    ),
                  ],
                ),
                buildElevatedButtonWidget('BUY'),
                SizedBox(height: 15.h,)
              ],
            ),
          )
        ],
      ),
    );
  }
}


ElevatedButton buildElevatedButton(
  String title,
  Color colorbg,
) {
  return ElevatedButton(
    onPressed: () {},
    child: Text(
      title,
      style: TextStyle(color: Color(0xff625D5D), fontSize: 25),
    ),
    style: ElevatedButton.styleFrom(
        backgroundColor: colorbg,
        elevation: 0,
        minimumSize: Size(42.62.w, 42.62.h)),
  );
}
