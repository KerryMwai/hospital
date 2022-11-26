import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String labelText;
  TextEditingController inputControler;
  bool isObsecureText;
  Icon suffixIcon;
  CustomTextField(
      {super.key,
      required this.labelText,
      required this.inputControler,
      required this.isObsecureText,
      required this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      width: size.width - 65,
      height: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey),
      child: TextField(
        obscureText: isObsecureText,
        controller: inputControler,
        style: const TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.5),
        cursorColor: Colors.black,
        cursorHeight: 20,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: labelText,
            suffixIcon: suffixIcon),
      ),
    );
  }
}
