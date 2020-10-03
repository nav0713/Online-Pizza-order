import 'package:flutter/material.dart';
import 'package:food_delivery/constant.dart';
import 'package:food_delivery/screens/details/porder-sizes.dart';

class SizeList extends StatelessWidget {
  const SizeList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Sizes(
          size: "S",
          index: 0,
          color: Colors.white,
        ),
        Sizes(
          size: "R",
          index: 1,
          color: Colors.white,
        ),
        Sizes(
          size: "M",
          index: 2,
          color: kPrimaryColor,
        ),
        Sizes(
          size: "L",
          index: 3,
          color: Colors.white,
        ),
      ],
    );
  }
}
