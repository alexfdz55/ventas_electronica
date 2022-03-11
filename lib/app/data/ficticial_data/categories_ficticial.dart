import 'package:ventas_electronica/app/data/models/category_model.dart';

const _base = 'assets/images/categories';

List<Category> categoriesFicticial = [
  Category(
    id: '1',
    name: 'Arduinos',
    imageUrl: '$_base/arduino.png',
    // isSelected: true,
    isActive: true,
  ),
  Category(
    id: '2',
    name: 'Modulos de Arduino',
    imageUrl: '$_base/modulos.jpg',
    // isSelected: true,
    isActive: true,
  ),
  Category(
    id: '3',
    name: 'Componentes',
    imageUrl: '$_base/componentes.jpg',
    // isSelected: true,
    isActive: true,
  ),
  Category(
    id: '4',
    name: 'Node MCU / ESP 32',
    imageUrl: '$_base/node.jpg',
    // isSelected: true,
    isActive: false,
  ),
  Category(
    id: '5',
    name: 'Motores de Paso',
    imageUrl: '$_base/arduino.png',
    // isSelected: true,
    isActive: true,
  ),
  Category(
    id: '6',
    name: 'Drivers de motores de paso',
    imageUrl: '$_base/arduino.png',
    // isSelected: true,
    isActive: true,
  ),
  Category(
    id: '7',
    name: 'Otros',
    imageUrl: '$_base/arduino.png',
    // isSelected: true,
    isActive: true,
  ),
];
