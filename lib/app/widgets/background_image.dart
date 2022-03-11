import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final Color color;
  const BackgroundImage({
    Key? key,
    this.color = Colors.black38,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/roll.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            color,
            BlendMode.darken,
          ),
        ),
      ),
    );
  }
}
