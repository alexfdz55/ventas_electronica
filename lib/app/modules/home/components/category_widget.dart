import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ventas_electronica/app/data/models/category_model.dart';
import 'package:ventas_electronica/app/modules/home/controllers/home_controller.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;

  CategoryWidget(this.category);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'category',
      builder: (_) => InkWell(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),

          height: 90,
          // width: 80,
          decoration: BoxDecoration(
            color: this.category.isSelected
                ? Theme.of(context).primaryColor
                : Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(this.category.imageUrl, width: 45.0),
              const SizedBox(height: 5.0),
              Text(
                this.category.name.toUpperCase(),
                style: TextStyle(
                    color:
                        this.category.isSelected ? Colors.white : Colors.black,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        onTap: () => _.changeCategory(this.category),
      ),
    );
  }
}
