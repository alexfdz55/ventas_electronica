import 'package:ventas_electronica/app/data/models/category_model.dart';

const _base = 'assets/images/categories';

List<Category> categoriesFicticial = [
  Category(
    id: '1',
    name: 'Arduinos',
    imageUrl: '$_base/arduino.png',
    isActive: true,
  ),
  Category(
    id: '2',
    name: 'Modulos de Arduino',
    imageUrl: '$_base/modulos.jpg',
    isActive: true,
  ),
  Category(
    id: '3',
    name: 'Componentes',
    imageUrl: '$_base/componentes.jpg',
    isActive: true,
  ),
  Category(
    id: '4',
    name: 'Node MCU / ESP 32',
    imageUrl: '$_base/node.jpg',
    isActive: false,
  ),
  Category(
    id: '5',
    name: 'Motores de Paso',
    imageUrl: '$_base/mp.jpg',
    isActive: true,
  ),
  Category(
    id: '6',
    name: 'Drivers de motores de paso',
    imageUrl: '$_base/drivers_mp.jpg',
    isActive: true,
  ),
  Category(
    id: '7',
    name: 'Otros',
    imageUrl: '$_base/otros.jpg',
    isActive: true,
  ),
  Category(
    id: '8',
    name: 'STM',
    imageUrl: '$_base/stm.jpg',
    isActive: true,
  ),
  Category(
    id: '9',
    name: 'Relés',
    imageUrl: '$_base/reles.jpg',
    isActive: true,
  ),
];
