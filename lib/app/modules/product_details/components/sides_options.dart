import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ventas_electronica/app/modules/product_details/controllers/product_details_controller.dart';

class SidesOptions extends StatelessWidget {
  final _ = Get.put(ProductDetailsController());
  static const customPadding = 10.0;
  SidesOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8.0),
        width: double.infinity,
        margin: EdgeInsets.only(
          left: customPadding,
          right: customPadding,
          bottom: 5.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 3.0,
            ),
          ],
        ),
        child: Column(children: _.sidesCheckBox));
  }
}
