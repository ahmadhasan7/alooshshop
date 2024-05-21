import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class AddPhonesControlller extends GetxController{
  late TextEditingController name;
  late TextEditingController price;
  late TextEditingController color;
  late TextEditingController ram;
  late TextEditingController memory;
  late TextEditingController stutus;
  late TextEditingController description;
  late TextEditingController datebuy;
  late TextEditingController buyname;
  late TextEditingController Imei1;
  late TextEditingController Imei2;
  @override
  void onInit() {
    name=TextEditingController();
    price=TextEditingController();
    color=TextEditingController();
    ram=TextEditingController();
    memory=TextEditingController();
    stutus=TextEditingController();
    description=TextEditingController();
    datebuy=TextEditingController();
    buyname=TextEditingController();
    Imei1=TextEditingController();
    Imei2=TextEditingController();
        super.onInit();
  }
  @override
  void dispose() {
    name.dispose();
    price.dispose();
    color.dispose();
    ram.dispose();
    stutus.dispose();
    description.dispose();
    buyname.dispose();
    Imei2.dispose();
    Imei1.dispose();
    super.dispose();
  }
}
