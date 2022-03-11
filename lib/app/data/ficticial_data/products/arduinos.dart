import 'package:ventas_electronica/app/data/models/product_model.dart';

const _baseImage = 'assets/images/arduinos';

List<Product> arduinosProduct = [
  Product(
    id: '1',
    name: 'Arduino Mega',
    category: 'Arduino',
    description: 'Arduino Mega 2560 Rev3',
    price: 2500,
    imageUrl: '$_baseImage/mega.jpg',
    quantity: 1,
  ),
  Product(
    id: '2',
    name: 'Arduino Pro Mini',
    category: 'Arduino',
    description: 'Pines soldados',
    price: 500,
    imageUrl: '$_baseImage/pro_mini.jpg',
    quantity: 2,
  ),
];
