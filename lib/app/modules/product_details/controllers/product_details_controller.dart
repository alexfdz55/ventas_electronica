import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:share_plus/share_plus.dart';

import 'package:ventas_electronica/app/data/models/product_model.dart';
import 'package:http/http.dart' as http;
import 'package:ventas_electronica/app/modules/product_details/components/custom_checkbox.dart';

class ProductDetailsController extends GetxController {
  ScrollController scrollController = ScrollController();

  Product? product;
  List<CustomCheckBox> extrasCheckBox = [];
  List<CustomCheckBox> sidesCheckBox = [];

  @override
  void onInit() {
    product = Get.arguments;
    scrollController = ScrollController();
    scrollController.addListener(scrollListener);
    update();
    super.onInit();
  }

  @override
  void onClose() {
    scrollController.removeListener(scrollListener);
    super.onClose();
  }

  RxBool isFavorite = true.obs;

  // CheckBox
  bool isSelected = false;

  // AppBar Status
  bool lastStatus = true;

  bool get isShrink {
    return scrollController.hasClients &&
        scrollController.offset > (200 - kToolbarHeight);
  }

  scrollListener() {
    if (isShrink != lastStatus) {
      lastStatus = isShrink;
      update();
    }
  }

  // Share Products
  // shareProduct() async {
  //   final uri = Uri.parse(product!.imageUrl);
  //   final res = await http.get(uri);
  //   final bytes = res.bodyBytes;

  //   final temp = await getTemporaryDirectory();
  //   final path = '${temp.path}/image.jpg';
  //   File(path).writeAsBytesSync(bytes);

  //   await Share.shareFiles(
  //     [path],
  //     text:
  //         'Wahoo Express\n${product!.name}\n${product!.category}\n\$${product!.price.toStringAsFixed(2)}\nVisitanos en:\nhttps://wahoosushibar.com',
  //   );
  // }
}
