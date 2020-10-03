import 'package:flutter/material.dart';
import 'package:food_delivery/constant.dart';

class Sizes extends StatelessWidget {
  final String size;
  final int index;
  final Color color;

  const Sizes({Key key, this.size, this.color, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: index == 0 ? EdgeInsets.only(left: 0) : EdgeInsets.only(left: 30),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
        color: color,
        border: index == 2
            ? null
            : Border.all(color: Colors.black12.withOpacity(.2)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        size,
        style: Theme.of(context)
            .textTheme
            .button
            .copyWith(fontSize: 22, color: kTextColor.withOpacity(.9)),
      ),
    );
  }
}
