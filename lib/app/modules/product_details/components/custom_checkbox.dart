import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ventas_electronica/app/modules/product_details/controllers/product_details_controller.dart';

class CustomCheckBox extends StatelessWidget {
  final String name;
  final double price;
  static const customPadding = 15.0;
  const CustomCheckBox({
    Key? key,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: customPadding,
        right: customPadding + 10,
      ),
      child: Row(
        children: [
          GetBuilder<ProductDetailsController>(
            init: ProductDetailsController(),
            initState: (_) {},
            builder: (_) {
              return Checkbox(
                activeColor: Theme.of(context).primaryColor,
                value: _.isSelected,
                onChanged: (extra) {
                  _.isSelected = !_.isSelected;
                  _.update();
                },
              );
            },
          ),
          Text(
            name,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.w400,
                ),
          ),
          Spacer(),
          Text(
            price.toStringAsFixed(2),
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                ),
          ),
        ],
      ),
    );
  }
}
