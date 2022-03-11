import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ventas_electronica/app/config/theme.dart';

import 'app/routes/app_pages.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Wahoo Sushi Express Menu",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: theme(),
    );
  }
}
