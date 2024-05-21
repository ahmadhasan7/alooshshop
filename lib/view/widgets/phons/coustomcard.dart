import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constanat/colors.dart';

class CoustomCard extends StatelessWidget {
  final String name;
  final String color;
  final String stutus;
  final String memory;
  final String ram;
  final String price;

  const CoustomCard(
      {super.key, required this.name, required this.color, required this.memory, required this.ram, required this.price, required this.stutus});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 100.sp,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/1234.png",
                width: 100.sp,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  RichText(
                    text: TextSpan(
                        text: "نوع الجهاز:  ",
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontFamily: "Tejwal",
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: name,
                              style: TextStyle(color: Colors.grey.shade600))
                        ]),
                  ),
                  RichText(
                    text: TextSpan(
                        text: "لون الجهاز:  ",
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontFamily: "Tejwal",
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: color,
                              style: TextStyle(color: Colors.grey.shade600))
                        ]),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "الذاكرة: ",
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontFamily: "Tejwal",
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: memory,
                            style: TextStyle(color: Colors.grey.shade600)),
                        TextSpan(
                            text: "   الرام: ",
                            style: TextStyle(color: AppColors.primaryColor)),
                        TextSpan(
                            text: ram,
                            style: TextStyle(color: Colors.grey.shade600)),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        text: "سعر المبيع:  ",
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontFamily: "Tejwal",
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: price,
                              style: TextStyle(color: Colors.grey.shade600))
                        ]),
                  ),
                  RichText(
                    text: TextSpan(
                        text: "حالة الجهاز:  ",
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontFamily: "Tejwal",
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: stutus,
                              style: TextStyle(color: Colors.grey.shade600))
                        ]),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
