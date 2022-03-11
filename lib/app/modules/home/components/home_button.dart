import 'package:flutter/material.dart';
import 'package:ventas_electronica/app/config/responsive.dart';

import 'package:ventas_electronica/app/services/controller/service_controller.dart';

class HomeButton extends StatelessWidget {
  // final _ = Get.put(HomeController());
  final bool mostrar;
  final service = ServiceController();

  HomeButton({
    Key? key,
    this.mostrar = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);

    return AnimatedOpacity(
      duration: Duration(milliseconds: 250),
      opacity: (mostrar) ? 1 : 0,
      child: Padding(
        padding: EdgeInsets.only(top: responsive.hp(88)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.transparent,
                Color(0xffff0303),
              ])),
          height: 90.0,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Favoritos',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: 'Ubuntu',
                    ),
                  ),
                ),
                Builder(
                  builder: (context) => InkWell(
                    // onTap: () => controller.openInfoDrawer(),
                    onTap: () {},
                    child: Container(
                      height: 35.0,
                      width: 180.0,
                      decoration: BoxDecoration(
                          color: Color(0xffff0303),
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Revisar Pedido',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontFamily: 'Ubuntu',
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              width: 22.0,
                              height: 22.0,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(
                                  20.0,
                                ),
                              ),
                              child: Center(
                                  child: Text(
                                '14',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11.0,
                                  fontFamily: 'Ubuntu',
                                ),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)),
            ),
          ),
        ),
      ),
    );
  }
}
