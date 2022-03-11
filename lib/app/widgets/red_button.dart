import 'package:flutter/material.dart';

class RedButton extends StatelessWidget {
  final String title;
  final double height;
  final Color textColor;
  final double textSize;
  final double top;
  final VoidCallback onPressed;
  final String fontFamily;
  final double borderRadius;
  final Color buttonColor;

  const RedButton({
    Key? key,
    this.title = 'Title',
    this.height = 50.0,
    this.textColor = Colors.white,
    this.textSize = 16.0,
    required this.onPressed,
    this.top = 30.0,
    this.fontFamily = 'Ubuntu',
    this.borderRadius = 0,
    this.buttonColor = const Color(0xffd41219),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // margin: EdgeInsets.only(top: top),
      height: height,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
            fontSize: textSize,
            fontFamily: fontFamily,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
