import 'package:flutter/material.dart';
import 'package:food_delivery/constant.dart';
import 'package:food_delivery/models/pizza.dart';
import 'package:food_delivery/screens/details/oder-quantity.dart';

class MainProduct extends StatelessWidget {
  const MainProduct({
    Key key,
    @required this.size,
    @required this.pizza,
  }) : super(key: key);

  final Size size;
  final Pizza pizza;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .6,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kTextLightColor.withOpacity(.1),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      ),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 30,
            child: Text(pizza.name,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: kTextColor, fontWeight: FontWeight.bold)),
          ),
          Positioned(
            top: 80,
            child: Text(pizza.description,
                style: Theme.of(context).textTheme.headline2.copyWith(
                    fontSize: 16, color: kTextLightColor.withOpacity(.7))),
          ),
          Positioned(
            top: 120,
            child: Hero(
              tag: pizza.name,
              child: Image.asset(
                pizza.image,
                width: 200,
                height: 200,
              ),
            ),
          ),
          Positioned(
            bottom: -20,
            child: Container(
              height: 60,
              width: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: kTextLightColor.withOpacity(.3)),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Quantity(),
            ),
          )
        ],
      ),
    );
  }
}
