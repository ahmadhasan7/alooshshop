import 'package:allooshshop/controller/mainpagecontroller.dart';
import 'package:allooshshop/core/constanat/colors.dart';
import 'package:allooshshop/view/widgets/mainpage/coustompanner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    MainPageController controller = Get.put(MainPageController());
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title:const  Text(
          "الرئيسية",
          style: TextStyle(color: Colors.white, fontFamily: "Tejwal"),
        ),
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50.sp,
            ),
           CoustomPanner(),
            const Divider(),
            Text(
              "المعاملات المتوفرة",
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontFamily: "Tejwal",
                  fontSize: 18.sp),
            ),
            SizedBox(
              height: 300.sp,
              child: Padding(
                  padding: EdgeInsets.all(15.sp),
                  child: GridView.builder(
                      itemCount: controller.details.length,
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 20,
                          childAspectRatio: 1.3),
                      itemBuilder: (context, index) {
                        var data = controller.details.toList()[index];
                        return InkWell(
                          onTap: () {
                            controller.goToPhones(data['route'] as String);
                          },
                          child: Container(
                            padding: EdgeInsets.only(left: 10.sp, top: 20.sp),
                            margin: EdgeInsets.only(top: 3.sp),
                            width: 100.sp,
                            height: 100.sp,
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(13.sp)),
                            child: Center(
                              child: Column(
                                children: [
                                  data['icon'] as Widget,
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Text(
                                    data['data'] as String,
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        color: Colors.white,
                                        fontFamily: "Tejwal",
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      })),
            )
          ],
        ),
      ),
    );
  }
}
