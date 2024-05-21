import 'package:allooshshop/core/constanat/routing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MainPageController extends GetxController{
  var details={
    {
      "data":"ديون",
      "icon":Icon(Icons.monetization_on,color: Colors.white,size: 30),
      "route":AppRoute.phones
    },{
      "data":"الاجهزة",
      "icon":Icon(Icons.phone_android,color: Colors.white,size: 30,),
      "route":AppRoute.phones
    }
    ,{
      "data":"الاقساط",
      "icon":Icon(Icons.money_off_outlined,color: Colors.white,size: 30,),
      "route":AppRoute.phones

    },{
      "data":"الأجهزة المتوفرة",
      "icon":Icon(Icons.visibility,color: Colors.white,size: 30,),
      "route":AppRoute.phones

    }

  };
  goToPhones(String route){
    Get.toNamed(route);
  }
}