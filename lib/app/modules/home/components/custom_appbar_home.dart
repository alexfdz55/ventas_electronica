import 'package:flutter/material.dart';

class CustomAppBarHome extends StatelessWidget {
  const CustomAppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          blurRadius: 10.0,
        ),
      ]),
      padding: const EdgeInsets.only(top: 10, left: 15),
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _welcomeText(context),
        ],
      ),
    );
  }

  Text _welcomeText(BuildContext context) {
    return Text(
      'Ventas de Electrónica',
      style: Theme.of(context).textTheme.headline1!.copyWith(
            color: Colors.black87,
            fontWeight: FontWeight.w400,
          ),
    );
  }
}
