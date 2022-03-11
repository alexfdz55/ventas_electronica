import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ventas_electronica/app/widgets/red_button.dart';

class DialogHelper {
  static void showErrorDialog({
    String? title = 'Error',
    String? description = 'Ha ocurrido un error',
  }) {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
          10.0,
        )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title ?? '',
                style: Get.textTheme.headline3!.copyWith(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Ubuntu',
                  fontSize: 22.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                description ?? '',
                style: Get.textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Ubuntu',
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 20.0),
              RedButton(
                borderRadius: 10.0,
                height: 40.0,
                onPressed: () {
                  if (Get.isDialogOpen!) Get.back();
                },
                title: 'Aceptar',
              ),
            ],
          ),
        ),
      ),
    );
  }

  static void showLoading([String? message]) {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
          10.0,
        )),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(
                color: Color(0xffd41219),
              ),
              SizedBox(height: 8),
              Text(
                message ?? 'Cargando...',
                style: Get.textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Ubuntu',
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //hide loading
  static void hideLoading() {
    if (Get.isDialogOpen!) Get.back();
  }
}
