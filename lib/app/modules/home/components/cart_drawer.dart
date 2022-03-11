import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ventas_electronica/app/data/models/product_model.dart';

import '../controllers/home_controller.dart';

class CartDrawer extends StatelessWidget {
  final HomeController _ = Get.find();
  final bool isSelected;
  CartDrawer({
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        // backgroundColor: Theme.of(context).backgroundColor,
        child: Obx(
          () => SizedBox(
            height: 3600,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: _myOrderTitle(context),
                ),
                SizedBox(height: 20.0),
                Expanded(
                  flex: 10,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _.productos.length,
                    itemBuilder: (context, index) {
                      return CartProductCard(
                        controller: _,
                        product: _.productos.keys.toList()[index],
                        quantity: _.productos.values.toList()[index],
                        index: index,
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  color: Theme.of(context).backgroundColor,
                  width: double.infinity,
                  height: 230.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _tituloOrderType(context),
                      _selectOrderType(context),
                      _cantidadTotal(context),
                      _botonPedido(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        // Column(
        //   children: [
        //     Expanded(
        //       flex: 1,
        //       child: _myOrderTitle(context),
        //     ),
        //     Expanded(
        //       flex: 10,
        //       child: SingleChildScrollView(
        //         physics: BouncingScrollPhysics(),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             SizedBox(height: 20.0),
        //             _cartDescription(),
        //           ],
        //         ),
        //       ),
        //     ),
        // Container(
        //   margin: EdgeInsets.symmetric(horizontal: 10.0),
        //   color: Theme.of(context).backgroundColor,
        //   width: double.infinity,
        //   height: 230.0,
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       _tituloOrderType(context),
        //       _selectOrderType(context),
        //       _cantidadTotal(context),
        //       _botonPedido(),
        //     ],
        //   ),
        // )
        //   ],
        // ),
      ),
    );
  }

  Padding _botonPedido() {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: InkWell(
        onTap: () => Get.toNamed('/order-complete'),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 35.0,
              width: 100.0,
              decoration: BoxDecoration(
                  color: Color(0xffff0303),
                  borderRadius: BorderRadius.circular(15.0)),
              child: Center(
                child: Text(
                  'Ordenar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Container(
              height: 35.0,
              width: 100.0,
              decoration: BoxDecoration(
                  color: Color(0xffff0303),
                  borderRadius: BorderRadius.circular(15.0)),
              child: Center(
                child: Text(
                  'Cancelar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _cantidadTotal(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total',
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            '\$${_.total}',
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Color(0xffff0303),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }

  Row _selectOrderType(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 140.0,
          height: 65.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            border: Border.all(
              color: Theme.of(context).primaryColor,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/llevar.png',
                  width: 50.0,
                ),
                Text(
                  'Recoger',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                )
              ],
            ),
          ),
        ),
        Container(
          width: 140.0,
          height: 65.0,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorLight.withOpacity(0.7),
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            border: Border.all(
              color: Theme.of(context).primaryColor,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/local.png',
                  width: 50.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Aqui',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Padding _tituloOrderType(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        bottom: 20.0,
      ),
      child: Text(
        'Elegir tipo de Orden',
        style: Theme.of(context).textTheme.headline6!.copyWith(
              color: Theme.of(context).primaryColor,
              fontSize: 15.0,
            ),
      ),
    );
  }

  FadeInUp _cartDescription() {
    return FadeInUp(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 7,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            height: 80.0,
            // color: Colors.white,
            margin: EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              bottom: 15.0,
            ),
            child: Row(
              children: [
                Container(
                  height: 80.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/roll.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 1.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Wahoo Burguer',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 25.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 1.0,
                                  spreadRadius: 2.0,
                                ),
                              ],
                              // border: Border.all(
                              //   color: Theme.of(context).primaryColor,
                              // ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.remove,
                                  color: Theme.of(context).primaryColor,
                                  size: 19.0,
                                ),
                                Text(
                                  '10',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Icon(
                                  Icons.add,
                                  color: Theme.of(context).primaryColor,
                                  size: 19.0,
                                )
                              ],
                            ),
                          ),
                          Text(
                            '\$8.95',
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Extra Queso',
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: Theme.of(context).primaryColor,
                                    ),
                          ),
                          Text(
                            '\$1.00',
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: Theme.of(context).primaryColor,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Container _myOrderTitle(BuildContext context) {
    return Container(
      height: 56.0,
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0),
        child: Text(
          'Mi Pedido',
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final HomeController controller;
  final Product product;
  final int quantity;
  final int index;
  CartProductCard({
    Key? key,
    required this.controller,
    required this.product,
    required this.quantity,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage(product.imageUrl),
              ),
              SizedBox(width: 5.0),
              Expanded(
                child: Text(
                  product.name,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
              IconButton(
                onPressed: () {
                  controller.removeProduct(product);
                },
                icon: Icon(Icons.remove_circle),
              ),
              Text(
                '${quantity}',
              ),
              IconButton(
                onPressed: () {
                  controller.addProduct(product);
                },
                icon: Icon(Icons.add_circle),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
