import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ventas_electronica/app/config/responsive.dart';
import 'package:ventas_electronica/app/modules/product_details/controllers/product_details_controller.dart';

class CategoryAndFavorite extends StatelessWidget {
  final _ = Get.put(ProductDetailsController());
  CategoryAndFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: _.isShrink ? responsive.width * 0.6 : responsive.width * 0.5,
          child: Text(
            _.isShrink ? _.product!.name : _.product!.category,
            style: TextStyle(
                color: _.isShrink ? Colors.black : Colors.white,
                fontSize: _.isShrink ? 20.0 : 16.0,
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.w400),
            maxLines: _.isShrink ? 1 : 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite,
            color: _.isShrink
                ? Colors.transparent
                : Theme.of(context).primaryColor,
            size: 25.0,
          ),
        ),
      ],
    );
  }
}
