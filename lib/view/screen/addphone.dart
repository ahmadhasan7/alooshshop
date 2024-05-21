import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/addphonescontroller.dart';
import '../../core/constanat/colors.dart';
import '../widgets/addphoneswidgets/coustomadddata.dart';
class AddPhone extends StatelessWidget {
  const AddPhone({super.key});

  @override
  Widget build(BuildContext context) {
    AddPhonesControlller controlller=Get.put(AddPhonesControlller());
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text(
          "إضافة جهاز جديد",
          style: TextStyle(color: Colors.white, fontFamily: "Tejwal"),
        ),
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CoustomAddPhoneDetails(
                nameofitem: 'اسم الجهاز',
                isreq: true,
                controller: controlller.name,
                isnum: false,
              ),
              CoustomAddPhoneDetails(
                nameofitem: 'رقم الايمي1 ',
                isreq: true,
                controller: controlller.Imei1,
                isnum: true,
              ),
              CoustomAddPhoneDetails(
                nameofitem: 'رقم الايمي2',
                isreq: true,
                controller: controlller.Imei2,
                isnum: true,
              ),
              CoustomAddPhoneDetails(
                nameofitem: 'اللون',
                isreq: true,
                controller: controlller.color,
                isnum: false,
              ),
              CoustomAddPhoneDetails(
                nameofitem: 'الرام',
                isreq: true,
                controller: controlller.ram,
                isnum: true,
              ),
              CoustomAddPhoneDetails(
                nameofitem: 'الذاكرة',
                isreq: true,
                controller: controlller.memory,
                isnum: true,
              ),
              CoustomAddPhoneDetails(
                nameofitem: 'الحالة',
                isreq: true,
                controller: controlller.stutus,
                isnum: false,
              ),
              CoustomAddPhoneDetails(
                nameofitem: 'الوصف',
                isreq: true,
                controller: controlller.description,
                isnum: false,
              ),
              CoustomAddPhoneDetails(
                nameofitem: 'اسم البائع',
                isreq: true,
                controller: controlller.buyname,
                isnum: false,
              ),
              CoustomAddPhoneDetails(
                nameofitem: 'تاريخ الشراء',
                isreq: true,
                controller: controlller.datebuy,
                isnum: false,
              ),
              CoustomAddPhoneDetails(
                nameofitem: 'سعر الشراء',
                isreq: true,
                controller: controlller.price,
                isnum: true,
              ),
               ElevatedButton(
                onPressed: () {},
                child: Text(
                  "إضافة للمستودع",
                  style: TextStyle(
                      color: Colors.white, fontFamily: "Tejwal", fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
