import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constanat/colors.dart';
class CoustomText extends StatelessWidget {
  final String title;
  final String subtitle;
  const CoustomText({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.sp),
      child: RichText(
        text: TextSpan(
          text: "$title : ",
          style: TextStyle(
              color: AppColors.primaryColor,
              fontFamily: "Tejwal",
              fontWeight: FontWeight.bold,
              fontSize: 20.sp),
          children: [
            TextSpan(
                text: "$subtitle " ,
                style: TextStyle(color: Colors.grey.shade600,fontSize: 15.sp))
          ],),
      ),
    );

  }
}
