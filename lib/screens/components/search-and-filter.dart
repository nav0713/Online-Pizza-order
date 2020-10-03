import 'package:flutter/material.dart';
import 'package:food_delivery/screens/components/filter.dart';
import 'package:food_delivery/screens/components/search-box.dart';

class SearchAndFilter extends StatelessWidget {
  const SearchAndFilter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          SearchBox(),
          SizedBox(
            width: 25,
          ),
          Filter(),
        ],
      ),
    );
  }
}
