import 'package:flutter/material.dart';

import '../../constant.dart';

class Quantity extends StatefulWidget {
  const Quantity({
    Key key,
  }) : super(key: key);

  @override
  _QuantityState createState() => _QuantityState();
}

class _QuantityState extends State<Quantity> {
  int quantity = 2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: Icon(Icons.remove, size: 28, color: Colors.black),
          onPressed: () {
            setState(() {
              quantity--;
            });
          },
        ),
        Text(
          quantity.toString(),
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: kTextColor),
        ),
        IconButton(
          icon: Icon(Icons.add, size: 28, color: Colors.black),
          onPressed: () {
            setState(() {
              quantity++;
            });
          },
        ),
      ],
    );
  }
}
