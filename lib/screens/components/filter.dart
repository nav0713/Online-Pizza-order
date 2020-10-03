import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant.dart';

class Filter extends StatelessWidget {
  const Filter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 4),
      decoration: BoxDecoration(
          boxShadow: [kDefaultShadow],
          borderRadius: BorderRadius.circular(16),
          color: kPrimaryColor),
      child: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/filter.svg",
          color: Colors.black,
        ),
        onPressed: () {},
      ),
    );
  }
}
