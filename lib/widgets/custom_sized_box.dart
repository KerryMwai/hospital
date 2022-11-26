import 'package:flutter/material.dart';

class CustomSizedBox extends StatelessWidget {
  double heightMod;

  CustomSizedBox({super.key, required this.heightMod});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height * heightMod,
    );
  }
}
