import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? textSize;
  final FontWeight? fontWeight;
  const CustomText({
    Key? key,
    required this.text,
    this.textColor = Colors.white,
    this.textSize = 18.0,
    this.fontWeight = FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: textSize,
        fontFamily: 'Ubuntu',
        color: textColor,
        fontWeight: fontWeight,
      ),
    );
  }
}
