import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constanat/colors.dart';

class CoustomTextField extends StatelessWidget {
  final String hinttext;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool? isNumber;
  final bool? obscureText;
  final double width;

  const CoustomTextField(
      {Key? key,
        this.obscureText,
        required this.hinttext,
        // required this.labeltext,
        required this.mycontroller,
        required this.valid,
        required this.isNumber, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        keyboardType: isNumber!
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: valid,
        controller: mycontroller,
        obscureText: obscureText == null || obscureText == false ? false : true,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade100,
            hintText: hinttext,
            hintStyle: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
            //floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
            const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: AppColors.primaryColor))),
      ),
    );
  }
}
