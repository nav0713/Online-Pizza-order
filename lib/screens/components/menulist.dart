import 'package:flutter/material.dart';
import 'package:food_delivery/models/menu,.dart';
import 'package:food_delivery/screens/components/menuItem.dart';

class MenuList extends StatelessWidget {
  const MenuList({
    Key key,
    @required this.menus,
  }) : super(key: key);

  final List<Menus> menus;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [
            ProductCard(
              menu: menus[0],
            ),
            ProductCard(
              menu: menus[1],
            ),
            ProductCard(
              menu: menus[2],
            ),
            ProductCard(
              menu: menus[3],
            ),
          ],
        ),
      ),
    );
  }
}
