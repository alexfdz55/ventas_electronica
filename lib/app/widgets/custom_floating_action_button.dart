import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final String text;
  final bool mostrar;
  final VoidCallback onTap;
  const CustomFloatingActionButton({
    Key? key,
    this.mostrar = true,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 250),
      opacity: (mostrar) ? 1 : 0,
      child: FloatingActionButton.extended(
        onPressed: onTap,
        label: Text(text),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
