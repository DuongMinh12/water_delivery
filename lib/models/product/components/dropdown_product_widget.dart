import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/add_all.dart';

List<String> list = <String>['50ml', '200ml', '500ml', '1L'];

class DropdownProduct extends StatefulWidget {
  const DropdownProduct({
    super.key,
  });

  @override
  State<DropdownProduct> createState() => _DropdownProductState();
}

class _DropdownProductState extends State<DropdownProduct> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Container(
        height: 38.h,
        width: 48.h,
        child: Icon(Icons.keyboard_arrow_down_rounded),
        decoration: BoxDecoration(
            color: kMain,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(5), bottomRight: Radius.circular(5))),
      ),
      // elevation: 16,
      style: txt16w5,
      underline: SizedBox(),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Container(
            alignment: Alignment.center,
            height: 38.h,
            width: 79.w,
            decoration: BoxDecoration(border: Border.all(color: kMain)),
            child: Text(value),
          ),
        );
      }).toList(),
    );
  }
}