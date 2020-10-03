import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/constant.dart';
import 'package:food_delivery/models/pizza.dart';
import 'package:food_delivery/screens/details/ingredients-list.dart';
import 'package:food_delivery/screens/details/ingredients.dart';
import 'package:food_delivery/screens/details/main-product.dart';
import 'package:food_delivery/screens/details/oder-button.dart';
import 'package:food_delivery/screens/details/size-list.dart';

class DetailsPage extends StatelessWidget {
  Pizza pizza;
  DetailsPage({this.pizza});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: buildAppBar(context),
        ),
        body: Body(pizza: pizza),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kTextLightColor.withOpacity(.1),
      elevation: 0,
      flexibleSpace: Container(
        margin: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black12.withOpacity(.2)),
                borderRadius: BorderRadius.circular(16),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: kTextColor,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/cart.svg",
                  width: 32,
                  height: 32,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  final Pizza pizza;
  Body({this.pizza});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainProduct(size: size, pizza: pizza),
          Container(
            margin: EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sizes",
                    style: Theme.of(context).textTheme.headline2.copyWith(
                          fontSize: 18,
                          color: kTextLightColor.withOpacity(.7),
                        )),
                SizedBox(
                  height: 16,
                ),
                SizeList(),
                SizedBox(
                  height: 16,
                ),
                Text("Ingredients",
                    style: Theme.of(context).textTheme.headline2.copyWith(
                          fontSize: 18,
                          color: kTextLightColor.withOpacity(.7),
                        )),
                SizedBox(
                  height: 16,
                ),
                IngredientsList(),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          PlaceOrder()
        ],
      ),
    );
  }
}
