import 'package:allooshshop/view/widgets/phons/coustomcard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/phonecontroller.dart';
import '../../core/constanat/colors.dart';

class Phones extends StatelessWidget {
  const Phones({super.key});

  @override
  Widget build(BuildContext context) {
  PhoneController controller=Get.put(PhoneController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        splashColor: AppColors.primaryColor,
        onPressed: () {
          controller.goToAddPhone();
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text(
          "الأجهزة",
          style: TextStyle(color: Colors.white, fontFamily: "Tejwal"),
        ),
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 10,
                childAspectRatio: 2.9,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap:(){ controller.goToDetailsPhoneScreen();},
                  child: CoustomCard(
                    name: "نوت10",
                    color: "أزرق",
                    memory: '128',
                    ram: '4',
                    price: '250000', stutus: 'مفكوك',
                  ),
                );
              })),
    );
  }
}
