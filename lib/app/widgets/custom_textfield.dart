import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Color hintColor;
  final TextCapitalization textCapitalization;
  final TextInputType textInputType;
  final IconData? icon;
  final double? iconSize;
  final Color iconColor;
  final TextEditingController? controller;

  const CustomTextField({
    Key? key,
    this.controller,
    required this.hintText,
    this.textCapitalization = TextCapitalization.words,
    this.textInputType = TextInputType.text,
    this.icon,
    this.iconSize,
    this.iconColor = Colors.white,
    this.hintColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        controller: controller,
        textCapitalization: textCapitalization,
        keyboardType: textInputType,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: iconColor,
            size: iconSize,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: hintColor,
            fontFamily: 'Ubuntu',
            fontSize: 18.0,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
