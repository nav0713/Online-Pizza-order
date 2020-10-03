import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Ingredients extends StatelessWidget {
  final Color color;
  final String icon;
  final int index;

  const Ingredients({Key key, this.color, this.icon, this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: index == 0 ? null : EdgeInsets.only(left: 30),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: SvgPicture.asset(
        icon,
        width: 32,
        height: 32,
      ),
    );
  }
}
