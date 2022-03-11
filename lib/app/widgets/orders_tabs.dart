import 'package:flutter/material.dart';

class OrdersTabs extends StatelessWidget {
  final String tab1;
  final String tab2;
  const OrdersTabs({Key? key, required this.tab1, required this.tab2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Theme.of(context).backgroundColor,
        margin: EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _pendingTab(context: context, title: tab1),
            _completedTab(context: context, title: tab2),
          ],
        ),
      ),
    );
  }

  Container _completedTab(
      {required BuildContext context, required String title}) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 5.0),
      child: Container(
        width: 188.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          border: Border.all(
            width: 0.2,
            color: Theme.of(context).primaryColor,
          ),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              blurRadius: 5,
            )
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ),
    );
  }

  Container _pendingTab(
      {required BuildContext context, required String title}) {
    return Container(
      width: 188.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(
          width: 0.2,
          color: Theme.of(context).primaryColor,
        ),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            blurRadius: 5,
          )
        ],
      ),
      child: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
