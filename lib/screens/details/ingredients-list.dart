import 'package:flutter/material.dart';
import 'package:food_delivery/screens/details/ingredients.dart';

class IngredientsList extends StatelessWidget {
  const IngredientsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Ingredients(
          icon: "assets/icons/tomota.svg",
          color: Colors.redAccent.withOpacity(.1),
          index: 0,
        ),
        Ingredients(
          icon: "assets/icons/garlic.svg",
          color: Colors.teal.withOpacity(.1),
          index: 1,
        ),
        Ingredients(
          icon: "assets/icons/onion.svg",
          color: Colors.orange.withOpacity(.1),
          index: 2,
        ),
        Ingredients(
          icon: "assets/icons/katchup.svg",
          color: Colors.yellow.withOpacity(.1),
          index: 3,
        ),
      ],
    );
  }
}
