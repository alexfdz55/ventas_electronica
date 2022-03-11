import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ventas_electronica/app/widgets/widgets.dart';

class InfoDrawer extends StatelessWidget {
  final bool isSelected;
  const InfoDrawer({
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: ElasticIn(child: _imageInfo()),
          ),
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _productName(context),
                  _categoryAndPrice(context),
                  _productDescription(context),
                  _tituloAcompanamientos(context),
                  _subTitleOpciones(context),
                  _acompanamienosOptions(context),
                  _tituloExtras(context),
                  _extrasOptions(context),
                  SizedBox(height: 5.0),
                  _addButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _productDescription(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        bottom: 5.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
            ),
            child: Text(
              'Descripción',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontSize: 15.0,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              'excepto para obtener alguna ventaja de ello? Pero, ¿quién tiene derecho a criticar a un hombre que elige disfrutar de un placer que no tiene consecuencias molestas, o uno que evita un dolor que no produce ningún placer resultante?',
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.black,
                  ),
            ),
          ),
        ],
      ),
    );
  }

  Container _addButton() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: RedButton(
        borderRadius: 15.0,
        onPressed: () {},
        title: 'Añadir al Carrito',
      ),
    );
  }

  Column _acompanamienosOptions(BuildContext context) {
    return Column(
      children: [
        _extrasCheckbox(context, title: 'Papas Regulares', price: '\$ 0.00'),
        _extrasCheckbox(context, title: 'Papas Wedge', price: '\$ 0.00'),
        _extrasCheckbox(context, title: 'Patacones', price: '\$ 1.00'),
      ],
    );
  }

  Padding _subTitleOpciones(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.0,
        top: 5.0,
      ),
      child: Text(
        'Debe seleccionar al menos una opción',
        style: Theme.of(context).textTheme.headline6!.copyWith(
              color: Colors.black38,
            ),
      ),
    );
  }

  Padding _tituloAcompanamientos(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
      ),
      child: Text(
        'Acompañamientos',
        style: Theme.of(context).textTheme.headline6!.copyWith(
              color: Theme.of(context).primaryColor,
              fontSize: 15.0,
            ),
      ),
    );
  }

  Column _extrasOptions(BuildContext context) {
    return Column(
      children: [
        _extrasCheckbox(context, title: 'Extra Queso', price: '\$ 1.50'),
        _extrasCheckbox(context, title: 'Extra Bacon', price: '\$ 1.00'),
        _extrasCheckbox(context, title: 'Extra Carne', price: '\$ 2.50'),
      ],
    );
  }

  Container _extrasCheckbox(BuildContext context,
      {required String title, required String price}) {
    return Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 10.0,
      ),
      child: Row(
        children: [
          Checkbox(
            activeColor: Theme.of(context).primaryColor,
            value: isSelected,
            onChanged: (extra) {},
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.normal,
                ),
          ),
          Spacer(),
          Text(
            price,
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }

  Padding _tituloExtras(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 5.0),
      child: Text(
        'Extras',
        style: Theme.of(context).textTheme.headline6!.copyWith(
              color: Theme.of(context).primaryColor,
              fontSize: 15.0,
            ),
      ),
    );
  }

  Padding _categoryAndPrice(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Hamburguesas',
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Colors.black87,
                  fontSize: 15.0,
                ),
          ),
          Text(
            '\$ 8.95',
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
          ),
        ],
      ),
    );
  }

  Padding _productName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0, left: 10.0),
      child: Text(
        'Wahoo Burguer',
        style: Theme.of(context).textTheme.headline4!.copyWith(
              fontWeight: FontWeight.w700,
            ),
      ),
    );
  }

  ShaderMask _imageInfo() {
    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.center,
          colors: [
            Colors.white,
            Colors.black26,
          ],
        ).createShader(bounds);
      },
      blendMode: BlendMode.darken,
      child: Stack(
        children: [
          Container(
            height: 250.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/roll.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.white38,
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          Positioned(
            top: 40.0,
            left: 10.0,
            child: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 30.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
