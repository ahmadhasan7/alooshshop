import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/login_controller.dart';
import '../../core/constanat/colors.dart';
import '../widgets/home_widgets/custom_button.dart';
import '../widgets/home_widgets/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    final LoginController controller =
        Get.put<LoginController>(LoginController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
                width: double.infinity,
              ),
              Padding(
                padding: REdgeInsets.symmetric(horizontal: 20.w),
                child: Hero(
                  tag: "image",
                  child: Image.asset(
                    "assets/images/12.JPG",
                    height: 250.h,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Log In",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.sp,
                    color: Color.fromARGB(255, 5, 13, 126)),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Please Log In to continue",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 5, 13, 126)),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextField(
                controller: controller.emailController,
                hintText: "Email",
                icon: Icon(
                  Icons.email_outlined,
                  color: AppColors.primaryColor,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextField(
                controller: controller.passwordController,
                hintText: "Password",
                icon: Icon(
                  Icons.lock_outline,
                  color: AppColors.primaryColor,
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              CustomButton(
                  title: "Log In",
                  onTap: () {
                    controller.goToMainScreen();
                  }),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
