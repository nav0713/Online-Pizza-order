import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/constant.dart';
import 'package:food_delivery/models/menu,.dart';

class ProductCard extends StatelessWidget {
  final Menus menu;

  const ProductCard({Key key, this.menu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: menu.index == 0
          ? EdgeInsets.symmetric(vertical: 5)
          : EdgeInsets.symmetric(horizontal: 12),
      height: 35,
      width: menu.index == 0 ? 80 : 100,
      margin: EdgeInsets.only(left: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:
            menu.index == 0 ? kPrimaryColor : kTextLightColor.withOpacity(.1),
      ),
      child: menu.index == 0
          ? Align(
              alignment: Alignment.center,
              child: Text(
                menu.label,
                style: TextStyle(fontWeight: FontWeight.bold),
              ))
          : Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    menu.icon,
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    menu.label,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
