import 'package:ventas_electronica/app/data/models/product_model.dart';

const _baseImage = 'assets/images/stm';

List<Product> stmProduct = [
  Product(
    id: '1',
    category: 'STM',
    name: 'STM32 F4',
    description: '32 bits (Cuestan 40 USD o más en el exterior)',
    price: 3000,
    imageUrl: '$_baseImage/STM32.jpg',
    quantity: 2,
  ),
];
