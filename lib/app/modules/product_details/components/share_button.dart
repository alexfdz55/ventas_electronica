import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ventas_electronica/app/modules/product_details/controllers/product_details_controller.dart';

class ShareButton extends StatelessWidget {
  final _ = Get.put(ProductDetailsController());
  ShareButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        // _.shareProduct();
      },
      child: Container(
        margin: const EdgeInsets.only(right: 40.0),
        child: Hero(
          tag: _.product!.id,
          child: Image.asset(
            'assets/images/share.png',
            width: 20.0,
            color: _.isShrink ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
