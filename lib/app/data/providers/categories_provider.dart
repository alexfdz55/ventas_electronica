import 'package:ventas_electronica/app/data/ficticial_data/categories_ficticial.dart';
import 'package:ventas_electronica/app/data/models/category_model.dart';

class CategoriesProvider {
  Future<List<Category>> getAll() async {
    return categoriesFicticial;
  }
}
