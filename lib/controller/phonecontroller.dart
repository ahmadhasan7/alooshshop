import 'package:allooshshop/core/constanat/routing.dart';
import 'package:get/get.dart';
class PhoneController extends GetxController{
 goToDetailsPhoneScreen(){
   Get.toNamed(AppRoute.detailsphone);
 }
 goToAddPhone(){
   Get.toNamed(AppRoute.addphone);
 }
}