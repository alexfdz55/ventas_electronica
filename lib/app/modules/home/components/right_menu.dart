import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ventas_electronica/app/data/models/product_model.dart';
import 'package:ventas_electronica/app/modules/home/components/card_products.dart';

import 'package:ventas_electronica/app/modules/home/controllers/home_controller.dart';

class RightMenu extends StatefulWidget {
  @override
  _RightMenuState createState() => _RightMenuState();
}

class _RightMenuState extends State<RightMenu> {
  final _ = Get.put(HomeController());

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => PageView.builder(
        controller: _.pageController,
        // physics: ClampingScrollPhysics(),
        itemCount: _.categories.length,
        itemBuilder: (BuildContext context, int index) {
          final product = _.productsByCategory[index];
          double scale = selectedIndex == index ? 1.0 : 0.7;

          return TweenAnimationBuilder(
            duration: const Duration(milliseconds: 350),
            tween: Tween(begin: scale, end: scale),
            curve: Curves.ease,
            builder: (context, double value, child) {
              return AnimatedOpacity(
                duration: const Duration(milliseconds: 350),
                opacity: value,
                child: Transform.scale(
                  scale: value,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..rotateZ(_.currentPage! - index),
                    child: child,
                  ),
                ),
              );
            },
            child: product,
          );
        },
        onPageChanged: (int page) {
          setState(() {
            selectedIndex = page;
          });

          _.updateCategoryState(_.categories[page]);
        },
      ),
    );
  }
}

class ProductsGirdView extends StatelessWidget {
  final _ = Get.put(HomeController());
  final List<Product> products;

  ProductsGirdView(this.products);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GridView.builder(
        controller: _.scrollController,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          // crossAxisCount: 2,
          // childAspectRatio: 0.84,
          crossAxisCount: 1,
          childAspectRatio: 1.4,
          // crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: products.length,
        itemBuilder: (BuildContext ctx, i) => CardProducts(products[i]),
      ),
    );
  }
}
