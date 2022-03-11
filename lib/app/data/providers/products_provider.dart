import 'package:ventas_electronica/app/data/ficticial_data/products/arduinos.dart';
import 'package:ventas_electronica/app/data/ficticial_data/products/componentes.dart';
import 'package:ventas_electronica/app/data/ficticial_data/products/drivers_mp.dart';
import 'package:ventas_electronica/app/data/ficticial_data/products/modulos.dart';
import 'package:ventas_electronica/app/data/ficticial_data/products/mp.dart';
import 'package:ventas_electronica/app/data/ficticial_data/products/node.dart';
import 'package:ventas_electronica/app/data/ficticial_data/products/otros.dart';
import 'package:ventas_electronica/app/data/ficticial_data/products/reles.dart';
import 'package:ventas_electronica/app/data/ficticial_data/products/stm.dart';
import 'package:ventas_electronica/app/data/models/product_model.dart';

class ProductsProvider {
  Future<List<Product>> getById(String id) async {
    if (id == '1') {
      return arduinosProduct;
    } else if (id == '2') {
      return modulosProduct;
    } else if (id == '3') {
      return componentesProduct;
    } else if (id == '4') {
      return nodeProduct;
    } else if (id == '5') {
      return mpProduct;
    } else if (id == '6') {
      return drivers_mpProduct;
    } else if (id == '7') {
      return otrosProduct;
    } else if (id == '8') {
      return stmProduct;
    } else if (id == '9') {
      return relesProduct;
    } else {
      return arduinosProduct;
    }
  }
}
