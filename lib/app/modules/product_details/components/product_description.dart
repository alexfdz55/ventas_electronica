import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ventas_electronica/app/modules/product_details/controllers/product_details_controller.dart';

class ProductDescription extends StatelessWidget {
  static const customPadding = 10.0;
  final _ = Get.put(ProductDetailsController());
  ProductDescription({Key? key}) : super(key: key);

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
            ),
            child: Text(
              'Descripción',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontSize: 18.0,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              _.product!.description,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.black.withOpacity(0.5),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
