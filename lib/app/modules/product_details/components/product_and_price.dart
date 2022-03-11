import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ventas_electronica/app/config/responsive.dart';
import 'package:ventas_electronica/app/modules/product_details/controllers/product_details_controller.dart';

class ProductAndPrice extends StatelessWidget {
  final _ = Get.put(ProductDetailsController());
  static const titlePadding = 20.0;

  ProductAndPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    String price = _.product!.price.toStringAsFixed(2);

    final stylePrice = Theme.of(context).textTheme.headline4!.copyWith(
          fontWeight: FontWeight.w500,
          color: Theme.of(context).primaryColor,
          fontSize: 20.0,
        );
    final styleDiscount = Theme.of(context).textTheme.headline4!.copyWith(
          color: Colors.black45,
          fontWeight: FontWeight.w300,
          fontSize: 20.0,
          decoration: TextDecoration.lineThrough,
        );

    return Padding(
      padding:
          EdgeInsets.only(top: 10.0, left: titlePadding, right: titlePadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: responsive.width - (2 * titlePadding + 90 + 10),
            child: Text(
              _.product!.name,
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 20.0),
              maxLines: 2,
            ),
          ),
          Spacer(),
          Container(
            width: 90,
            child: Column(
              children: [
                Text('$price CUP', style: stylePrice),
                // SizedBox(width: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
