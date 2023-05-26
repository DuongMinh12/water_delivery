import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:water_delivery/models/product/product_model.dart';

import '../../../constants/add_all.dart';

class BodyHomeScreen extends StatelessWidget {
  BodyHomeScreen({
    super.key,
  });
  // ProductModel productModel = ProductModel();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 16.h),
          width: double.infinity,
          height: 188.h,
          decoration: BoxDecoration(color: colorBgAppbar),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 11.w),
                child: Text(
                  'Welcome Back!',
                  style: txt12w5,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 11.w, bottom: 13.h),
                child: Text(
                  'Mr Product!',
                  style: txt20w6,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 21.w),
                    hintText: 'Search Something....',
                    hintStyle: txt12w4,
                    filled: true,
                    fillColor: Color(0x1a000000),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    )),
              )
            ],
          ),
        ),
        Container(
          height: 574.h,
          child: SingleChildScrollView(
            child: DefaultTabController(
              length: 4,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('njbjnjnn'),
                      Text(
                        'Water type',
                        style: txt14w5,
                      ),
                      TabBar(
                          indicatorPadding: EdgeInsets.zero,
                          indicatorColor: Colors.transparent,
                          labelPadding: EdgeInsets.symmetric(horizontal: 5),
                          //isScrollable: true,
                          labelColor: Colors.red,
                          indicator: BoxDecoration(color: Colors.yellow),
                          unselectedLabelColor: Colors.blue,
                          // indicatorColor: Colors.red,
                          tabs: [
                            Text('data'),
                            Text('data'),
                            Text('data'),
                            Text('data'),
                            // buildTabProductHome('All'),
                            // buildTabProductHome('Distilled'),
                            // buildTabProductHome('Spring'),
                            // buildTabProductHome('Purified'),
                          ]),
                      Container(
                        margin: EdgeInsets.only(top: 20.h),
                        // color: Colors.blue,
                        height: 480.h,
                        child: TabBarView(children: [
                          Container(
                            child: GridView.builder(
                              itemCount: ProductModel.product.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                    crossAxisSpacing: 11.w,
                                    mainAxisSpacing: 11.h,
                                    childAspectRatio: 2/3),
                                itemBuilder: (context, indext){
                                  return Stack(
                                    children: [
                                      Positioned(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: Image.asset(ProductModel.product[1].image.toString(),
                                          fit: BoxFit.cover,),
                                        ),
                                      ),
                                      Positioned(
                                          child: Container(
                                        color: Color(0xffF8F8F8),
                                            height: 62.h,
                                      ),)
                                    ],
                                  );
                                }),
                          ),
                          Text('data'),
                          Text('data'),
                          Text('data'),
                        ]),
                      )
                    ],
                  )),
            ),
          ),
        )
      ],
    );
  }
}

Tab buildTabProductHome(String title) => Tab(
      icon: Container(
        alignment: Alignment.center,
        height: 34.63.h,
        width: 81.76.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: colortabbar,
        ),
        child: Text(
          title,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
        ),
      ),
    );
