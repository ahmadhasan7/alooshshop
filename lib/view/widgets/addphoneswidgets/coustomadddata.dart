import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constanat/colors.dart';
import 'coustomtextfeild.dart';
class CoustomAddPhoneDetails extends StatelessWidget {
  final String nameofitem;
  final bool isreq;
  final TextEditingController controller;
  final bool isnum;
  const CoustomAddPhoneDetails(
      {super.key, required this.nameofitem, required this.isreq, required this.controller, required this.isnum});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [

        CoustomTextField(
          hinttext: '',
          mycontroller: controller,
          valid: (String? val) {},
          isNumber: isnum, width: 150.sp,),
        Container(
          width: 125.sp,
          child: Text(
            nameofitem,
            style: TextStyle(
                fontFamily: "Tejwal",
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15.sp),
            textAlign: TextAlign.end,
          ),
        ),
        isreq
            ? Container(width: 5.sp,
          child: Icon(Icons.star, color: Colors.yellow,size: 15,),)
            : Container(width: 5.sp,),
      ],
    );
  }
}

