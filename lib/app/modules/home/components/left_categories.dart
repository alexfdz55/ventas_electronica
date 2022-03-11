import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ventas_electronica/app/modules/home/components/components.dart';
import 'package:ventas_electronica/app/modules/home/controllers/home_controller.dart';

class LeftCategories extends StatelessWidget {
  final _ = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, i) => CategoryWidget(_.categories[i]),
        itemCount: _.categories.length,
        separatorBuilder: (_, index) => const SizedBox(height: 10),
      ),
    );
  }
}
