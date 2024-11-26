import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //Shoes in shop
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Jorden',
        price: '10,999',
        imagePath: 'lib/images/nike 2.png',
        description:
            "This iteration of the AJ1 re-imagines Mike's first signature model with a fresh mix of colours."),
    Shoe(
        name: 'Air Jorden',
        price: '14,999',
        imagePath: 'lib/images/nike 3.png',
        description:
            "This iteration of the AJ1 re-imagines Mike's first signature model with a fresh mix of colours."),
    Shoe(
        name: 'Air Jorden',
        price: '10,999',
        imagePath: 'lib/images/nike 4.png',
        description:
            "This iteration of the AJ1 re-imagines Mike's first signature model with a fresh mix of colours."),
    Shoe(
        name: 'Air Jorden',
        price: '10,999',
        imagePath: 'lib/images/nike 5.png',
        description:
            "This iteration of the AJ1 re-imagines Mike's first signature model with a fresh mix of colours."),
  ];

  //user cart
  List<Shoe> usercart = [];

  //shoes for sale

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart

  List<Shoe> getUserCart() {
    return usercart;
  }

  //add shoe to cart
  void addShoeToCart(Shoe shoe) {
    usercart.add(shoe);
    notifyListeners();
  }

  //remove from user cart

  void removeItemFromCart(Shoe shoe) {
    usercart.remove(shoe);
    notifyListeners();
  }
}
