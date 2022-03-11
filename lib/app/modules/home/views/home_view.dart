import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../components/components.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediquery = MediaQuery.of(context);

    final safeAreaHeight = mediquery.padding.top;
    final kWidth = mediquery.size.width;
    final khight = mediquery.size.height;

    bool isSelected = false;

    print(kWidth);

    print(khight);

    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) => _.isLoading
          ? const CircularProgressIndicator()
          : Scaffold(
              key: controller.scaffoldKey,
              endDrawerEnableOpenDragGesture: false,
              endDrawer: controller.isInfoDrawer
                  ? InfoDrawer(isSelected: isSelected)
                  : CartDrawer(isSelected: isSelected),
              backgroundColor: Theme.of(context).backgroundColor,
              body: SafeArea(
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CustomAppBarHome(),
                        SizedBox(
                          height: khight - (60 + safeAreaHeight),
                          // color: Colors.amberAccent,
                          child: Row(
                            children: [
                              Container(
                                width: kWidth * 0.28,
                                color: Colors.grey.withOpacity(0.2),
                                child: LeftCategories(),
                              ),
                              Container(
                                width: kWidth * 0.72,
                                color: Colors.grey.withOpacity(0.2),
                                child: RightMenu(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
