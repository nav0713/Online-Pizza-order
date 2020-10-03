import 'package:flutter/material.dart';

class Pizza {
  final String rating;
  final String image;
  final String name;
  final String description;
  final String price;

  Pizza({this.rating, this.name, this.description, this.price, this.image});
}

List<Pizza> pizzas = [
  Pizza(
    rating: "4.8",
    image: "assets/images/pizza1.png",
    description: "Hot Pizza with pepper",
    name: "Pepperoni Pizza",
    price: "9:50",
  ),
  Pizza(
    rating: "4.3",
    image: "assets/images/pizza2.png",
    description: "Hot Sizzling Pizza with Cheese",
    name: "Cheese Pizza",
    price: "11:50",
  ),
  Pizza(
    rating: "4.9",
    image: "assets/images/pizza3.png",
    description: "Peri-Peri Pizza",
    name: "Fiesta Pizza",
    price: "8:50",
  ),
];
