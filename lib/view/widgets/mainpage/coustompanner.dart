import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constanat/colors.dart';

class CoustomPanner extends StatelessWidget {
  const CoustomPanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        padding: EdgeInsets.all(15.sp),
        margin: EdgeInsets.all(15.sp),
        width: double.infinity,
        height: 150.sp,
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(25.sp)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "المساعد الشخصي",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Tejwal"),
            ),
            Text("سجل كل معلوماتك \nو ديونك و أقساطك",style: TextStyle(
                color: Colors.grey,
                fontSize: 14.sp,
                fontFamily: "Tejwal"),),
            Text("Developed By: Ahmad Hasan ",style: TextStyle(
                color: Colors.white,
                fontSize: 10.sp,
                fontFamily: "Tejwal"),),

          ],
        ),
      ),
      Positioned(
        left: 110.sp,
        bottom: 10.sp,
        child: Image.asset(
          "assets/images/123.PNG",
          height: 250.sp,
        ),
      ),
    ]);
  }
}
