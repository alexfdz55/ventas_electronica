import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  static const customPadding = 10.0;
  final String title;
  final String subtitle;
  const CustomTitle({
    Key? key,
    required this.title,
    this.subtitle = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      width: double.infinity,
      margin: EdgeInsets.only(
        left: customPadding,
        right: customPadding,
        bottom: 5.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 3.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontSize: 18.0,
                ),
          ),
          SizedBox(height: 5.0),
          Container(
            child: Text(
              subtitle,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Colors.black.withOpacity(0.5), fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }
}
