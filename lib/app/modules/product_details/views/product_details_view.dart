import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ventas_electronica/app/modules/product_details/components/category_and_favorite.dart';
import 'package:ventas_electronica/app/modules/product_details/components/product_and_price.dart';
import 'package:ventas_electronica/app/modules/product_details/components/product_description.dart';
import 'package:ventas_electronica/app/modules/product_details/components/share_button.dart';

import '../controllers/product_details_controller.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  final _ = Get.put(ProductDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: _customHeader(context),
    );
  }

  CustomScrollView _customHeader(BuildContext context) {
    return CustomScrollView(
      controller: _.scrollController,
      physics: BouncingScrollPhysics(),
      slivers: [
        GetBuilder<ProductDetailsController>(
          builder: (_) {
            return SliverAppBar(
              floating: false,
              elevation: 0,
              iconTheme: IconThemeData(
                color: controller.isShrink ? Colors.black : Colors.white,
              ),
              actions: [
                // ShareButton(),
              ],
              backgroundColor: Theme.of(context).primaryColor,
              expandedHeight: 250.0,
              pinned: true,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(
                  left: _.isShrink ? 50.0 : 20.0,
                  right: 10.0,
                  bottom: _.isShrink ? 5 : 15.0,
                ),
                // title: CategoryAndFavorite(),
                stretchModes: [
                  StretchMode.zoomBackground,
                ],
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    // Hero(
                    //   tag: _.product!.id,
                    //   child: Image.asset(_.product!.imageUrl),
                    // ),
                    Image.asset(_.product!.imageUrl),
                    // _opacityContainer(),
                  ],
                ),
              ),
            );
          },
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    flex: 6,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProductAndPrice(),
                          SizedBox(height: 15.0),
                          ProductDescription(),
                          SizedBox(height: 10.0),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Container _opacityContainer() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.4),
      ),
    );
  }
}
