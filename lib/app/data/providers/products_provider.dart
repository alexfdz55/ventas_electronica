import 'package:ventas_electronica/app/data/ficticial_data/products/arduinos.dart';
import 'package:ventas_electronica/app/data/ficticial_data/products/modulos.dart';
import 'package:ventas_electronica/app/data/models/product_model.dart';

class ProductsProvider {
  Future<List<Product>> getById(String id) async {
    if (id == '1') {
      return arduinosProduct;
    } else if (id == '2') {
      return modulosProduct;
    } else if (id == '3') {
      return arduinosProduct;
    } else if (id == '4') {
      return arduinosProduct;
    } else if (id == '5') {
      return arduinosProduct;
    } else if (id == '6') {
      return arduinosProduct;
    } else if (id == '7') {
      return arduinosProduct;
    } else {
      return arduinosProduct;
    }
  }
}
