import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: kTextLightColor.withOpacity(.1)),
        child: TextField(
          style: TextStyle(color: kTextLightColor.withOpacity(.7)),
          decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              icon: SvgPicture.asset(
                "assets/icons/search.svg",
                color: Colors.black87,
              ),
              hintText: "Search Foods...",
              hintStyle: TextStyle(
                color: kTextLightColor.withOpacity(.7),
                fontSize: 18,
              )),
        ),
      ),
    );
  }
}
