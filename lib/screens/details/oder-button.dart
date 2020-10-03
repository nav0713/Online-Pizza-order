import 'package:flutter/material.dart';
import 'package:food_delivery/constant.dart';

class PlaceOrder extends StatelessWidget {
  const PlaceOrder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        height: 50,
        width: 260,
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [kDefaultShadow]),
        child: Center(
          child: Text(
            "Place an Order",
            style: Theme.of(context).textTheme.button.copyWith(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
