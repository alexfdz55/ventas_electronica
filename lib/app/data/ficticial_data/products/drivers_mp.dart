import 'package:ventas_electronica/app/data/models/product_model.dart';

const _baseImage = 'assets/images/drivers_mp';

List<Product> drivers_mpProduct = [
  Product(
    id: '1',
    category: 'Drivers de Motores de paso',
    name: 'Para motor unipolar',
    description: '...',
    price: 50,
    imageUrl: '$_baseImage/Unipolar.jpg',
    quantity: 2,
  ),
  Product(
    id: '2',
    category: 'Drivers de Motores de paso',
    name: 'Puente en H',
    description: 'Para motores bipolares.',
    price: 150,
    imageUrl: '$_baseImage/Puente_H.jpg',
    quantity: 1,
  ),
  Product(
    id: '3',
    category: 'Drivers de Motores de paso',
    name: 'A4988',
    description:
        'Para motores bipolares. Tiene para micropasos y regular la corriente.',
    price: 150,
    imageUrl: '$_baseImage/A4988.jpg',
    quantity: 1,
  ),
];
