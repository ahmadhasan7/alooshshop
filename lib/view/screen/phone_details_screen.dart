import 'package:allooshshop/view/widgets/detailsphone/coustomText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constanat/colors.dart';

class DetailsPhoneScreen extends StatelessWidget {
  const DetailsPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text(
          "التفاصيل",
          style: TextStyle(color: Colors.white, fontFamily: "Tejwal"),
        ),
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "معلومات عامة",
                      style: TextStyle(
                          fontSize: 25.sp,
                          fontFamily: "Tejwal",
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor),
                    ),
                  ),
                  Divider(),
                  CoustomText(title: "اسم الجهاز", subtitle: "نوت 10 برو ماكس"),
                  CoustomText(
                      title: "رقم ايمي1", subtitle: "4582545454214531453"),
                  CoustomText(
                      title: "رقم ايمي2", subtitle: "4582545454214531453"),
                  CoustomText(title: "اللون", subtitle: "أزرق"),
                  CoustomText(title: "الرام", subtitle: "4"),
                  CoustomText(title: "الذاكرة", subtitle: "128"),
                  Divider(),
                  Center(
                    child: Text(
                      "الوصف",
                      style: TextStyle(
                          fontSize: 25.sp,
                          fontFamily: "Tejwal",
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor),
                    ),
                  ),
                  CoustomText(title: "الحالة", subtitle: "مفكوك"),
                  CoustomText(
                      title: "الوصف",
                      subtitle:
                          "خالي العلام معه شاحنه وسماعاته وحباشاته كلها بدون استثناء"),
                  Divider(),
                  Center(
                    child: Text(
                      "تفاصيل الشراء",
                      style: TextStyle(
                          fontSize: 25.sp,
                          fontFamily: "Tejwal",
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor),
                    ),
                  ),
                  CoustomText(title: "اسم البائع", subtitle: "علاوي حبيب قلبي"),
                  CoustomText(title: "تاريخ الشراء", subtitle: "14/4/2024"),
                  CoustomText(title: "سعر الشراء", subtitle: "14/4/2024"),

                  CoustomText(title: "اسم المشتري", subtitle: "علاوي حبيب قلبي"),
                  CoustomText(title: "تاريخ الشراء", subtitle: "14/4/2024"),
                  CoustomText(title: "سعر البيع", subtitle: "14/4/2024"),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
