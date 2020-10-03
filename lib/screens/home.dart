import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/constant.dart';
import 'package:food_delivery/models/menu,.dart';
import 'package:food_delivery/screens/components/menulist.dart';

import 'components/main-product.dart';
import 'components/search-and-filter.dart';
import '../models/pizza.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: mainAppBar(),
      body: Body(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/home.svg",
                width: 32,
                height: 32,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/wallet.svg",
                width: 32,
                height: 32,
                color: kTextLightColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/bell.svg",
                width: 32,
                height: 32,
                color: kTextLightColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/user.svg",
                width: 32,
                height: 32,
                color: kTextLightColor,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  AppBar mainAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Container(
        margin: EdgeInsets.only(left: 5),
        child: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(top: 5, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: kPrimaryColor,
          ),
          child: IconButton(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              height: 24,
              color: kTextColor.withOpacity(.9),
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}

class Body extends StatelessWidget {
  final List<Menus> menus = [
    Menus(index: 0, label: "All"),
    Menus(icon: "assets/icons/burger.svg", index: 1, label: "Burger"),
    Menus(icon: "assets/icons/pizza.svg", index: 2, label: "Pizza"),
    Menus(icon: "assets/icons/fries.svg", index: 3, label: "Fries"),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Let`s eat",
              style: TextStyle(
                  fontSize: 32, fontWeight: FontWeight.bold, color: kTextColor),
            ),
            Text("Delicious Food 😋",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: kTextColor)),
            SearchAndFilter(),
            MenuList(menus: menus),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                children: [
                  MainProduct(
                    pizza: pizzas[0],
                  ),
                  MainProduct(pizza: pizzas[1]),
                  MainProduct(pizza: pizzas[2]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
