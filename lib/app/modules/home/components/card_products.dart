import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ventas_electronica/app/data/models/product_model.dart';
import 'package:ventas_electronica/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class CardProducts extends StatelessWidget {
  final Product product;

  CardProducts(this.product);

  final _ = Get.put(HomeController());

  static String _price = '';

  @override
  Widget build(BuildContext context) {
    _price = this.product.price.toStringAsFixed(2);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 3.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              _containerImage(
                () => Get.toNamed(
                  Routes.PRODUCT_DETAILS,
                  arguments: this.product,
                ),
              ),
            ],
          ),
          _productName(context),
          SizedBox(height: 10.0),
          _productPrice(context)
        ],
      ),
    );
  }

  Widget _containerImage(VoidCallback onTap) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10.0),
        topRight: Radius.circular(
          10.0,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 120.0,
          // decoration: BoxDecoration(
          //   image: _imageProduct(),
          // ),
          child: Hero(
            tag: this.product.id,
            child: Image.asset(this.product.imageUrl),
          ),
        ),
      ),
    );
  }

  DecorationImage _imageProduct() {
    return DecorationImage(
      image: AssetImage(product.imageUrl),
      fit: BoxFit.cover,
      colorFilter: ColorFilter.mode(
        Colors.black26,
        BlendMode.darken,
      ),
    );
  }

  Container _productPrice(BuildContext context) {
    final stylePrice = Theme.of(context).textTheme.headline4!.copyWith(
          color: Colors.black.withOpacity(0.7),
          fontWeight: FontWeight.w500,
          fontSize: 18.0,
        );
    final styleDiscount =
        stylePrice.copyWith(decoration: TextDecoration.lineThrough);

    return Container(
      padding: const EdgeInsets.only(
        // top: 5.0,
        left: 10.0,
        right: 15.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer(),
          _price == '0.00' ? Container() : Text('\$$_price', style: stylePrice),
        ],
      ),
    );
  }

  Padding _productName(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 5.0, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // color: Colors.red,
            width: 220,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.product.name,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500),
                  maxLines: 3,
                ),
                if (this.product.quantity != 0)
                  Text(
                    'Cantidad: ${this.product.quantity}',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// 