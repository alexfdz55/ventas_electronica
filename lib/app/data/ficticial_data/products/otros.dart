import 'package:ventas_electronica/app/data/models/product_model.dart';

const _baseImage = 'assets/images/otros';

List<Product> otrosProduct = [
  Product(
    id: '1',
    category: 'Otros',
    name: 'Protoboard',
    description: '...',
    price: 2000,
    imageUrl: '$_baseImage/Protoboard.jpg',
    quantity: 1,
  ),
  Product(
    id: '2',
    category: 'Otros',
    name: 'Teclado pequeño',
    description: '...',
    price: 100,
    imageUrl: '$_baseImage/Teclado1.jpg',
    quantity: 1,
  ),
  Product(
    id: '3',
    category: 'Otros',
    name: 'Teclado grande',
    description: '...',
    price: 100,
    imageUrl: '$_baseImage/Teclado2.jpg',
    quantity: 1,
  ),
  Product(
    id: '4',
    category: 'Otros',
    name: 'FTDI232',
    description: 'Sirve para los Arduinos Pro MIni',
    price: 200,
    imageUrl: '$_baseImage/FTDI232.jpg',
    quantity: 1,
  ),
  Product(
    id: '5',
    category: 'Otros',
    name: 'Fuente Simétrica de 5V',
    description: '...',
    price: 500,
    imageUrl: '$_baseImage/Fuente.jpg',
    quantity: 1,
  ),
  Product(
    id: '6',
    category: 'Otros',
    name: 'Placa para Arduino Uno',
    description: '...',
    price: 100,
    imageUrl: '$_baseImage/placa.jpg',
    quantity: 1,
  ),
];
