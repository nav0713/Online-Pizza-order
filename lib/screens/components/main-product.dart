import 'package:flutter/material.dart';
import 'package:food_delivery/models/pizza.dart';
import 'package:food_delivery/screens/details/home.dart';
import 'package:food_delivery/transition/transition-animtion.dart';

import '../../constant.dart';

class MainProduct extends StatelessWidget {
  Pizza pizza;
  MainProduct({this.pizza});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            TransitionAnimation(
                widget: DetailsPage(
              pizza: pizza,
            )));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        alignment: Alignment.center,
        height: 180,
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
            boxShadow: [kDefaultShadow],
            color: Colors.white,
            borderRadius: BorderRadius.circular(16)),
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Positioned(
                left: -20,
                top: 20,
                child: Hero(
                  tag: pizza.name,
                  child: Image.asset(
                    pizza.image,
                    height: 140,
                    width: 140,
                  ),
                )),
            Positioned(
              left: 150,
              top: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        pizza.rating,
                        style: Theme.of(context).textTheme.button.copyWith(
                            color: kTextLightColor.withOpacity(.7),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    pizza.name,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: kTextColor),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    pizza.description,
                    style: Theme.of(context).textTheme.headline2.copyWith(
                        fontSize: 16, color: kTextLightColor.withOpacity(.7)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$" + pizza.price,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: kTextColor, fontSize: 16),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(16),
                      topLeft: Radius.circular(16),
                    )),
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
