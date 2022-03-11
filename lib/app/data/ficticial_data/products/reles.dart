import 'package:ventas_electronica/app/data/models/product_model.dart';

const _baseImage = 'assets/images/reles';

List<Product> relesProduct = [
  Product(
    id: '1',
    category: 'Relés',
    name: 'Módulo de 2 Relés',
    description: '...',
    price: 300,
    imageUrl: '$_baseImage/modulo.jpg',
    quantity: 1,
  ),
  Product(
    id: '2',
    category: 'Relés',
    name: 'Rele 5v',
    description: '...',
    price: 100,
    imageUrl: '$_baseImage/Rele_5v.jpg',
    quantity: 1,
  ),
  Product(
    id: '3',
    category: 'Relés',
    name: 'Rele 12v',
    description: '...',
    price: 100,
    imageUrl: '$_baseImage/Rele_12v.jpg',
    quantity: 1,
  ),
  Product(
    id: '4',
    category: 'Relés',
    name: 'Rele 24v',
    description: '...',
    price: 100,
    imageUrl: '$_baseImage/Rele_24v.jpg',
    quantity: 1,
  ),
];
