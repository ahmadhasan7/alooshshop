import 'package:allooshshop/core/constanat/routing.dart';
import 'package:allooshshop/view/screen/addphone.dart';
import 'package:allooshshop/view/screen/mainscreen.dart';
import 'package:allooshshop/view/screen/phones.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/screen/login_page.dart';
import '../../view/screen/phone_details_screen.dart';

class Routers {
  List<GetPage<dynamic>>? routers = [
    GetPage(
        name: '/',
        page: () =>LoginPage()),
    GetPage(name: AppRoute.mainpage, page:()=> MainPage()),
    GetPage(name: AppRoute.phones, page: ()=>Phones()),
    GetPage(name: AppRoute.detailsphone, page: ()=>DetailsPhoneScreen()),
    GetPage(name: AppRoute.addphone, page: ()=>AddPhone())
  ];
}
