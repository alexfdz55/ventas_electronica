import 'package:ventas_electronica/app/data/models/product_model.dart';

const _baseImage = 'assets/images/node';

List<Product> nodeProduct = [
  Product(
    id: '1',
    category: 'Node MCU / ESP 32',
    name: 'Node MCU',
    description: '...',
    price: 1000,
    imageUrl: '$_baseImage/node_mcu.webp',
    quantity: 1,
  ),
  Product(
    id: '2',
    category: 'Node MCU / ESP 32',
    name: 'ESP 32',
    description: '...',
    price: 1500,
    imageUrl: '$_baseImage/esp_32.jpg',
    quantity: 1,
  ),
];
