import 'package:allooshshop/core/constanat/routing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  goToMainScreen(){
    Get.toNamed(AppRoute.mainpage);
  }
}
