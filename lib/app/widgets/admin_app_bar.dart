import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AdminAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  const AdminAppBar({
    Key? key,
    required this.title,
    this.centerTitle = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline3!.copyWith(
              color: Colors.black,
            ),
      ),
      centerTitle: centerTitle,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  size: 30.0,
                ),
              ),
              Positioned(
                right: 8,
                top: 10,
                child: FadeInDown(
                  from: 30.0,
                  duration: Duration(milliseconds: 200),
                  child: Container(
                    width: 15.0,
                    height: 15.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                      border: Border.all(
                        width: 0.7,
                        color: Colors.black,
                      ),
                    ),
                    child: Center(
                        child: Text(
                      '12',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 8),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 56.0);
}
