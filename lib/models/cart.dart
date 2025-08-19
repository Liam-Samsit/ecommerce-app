import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{

  // shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Freaky Friday",
      price: "6",
      imagePath: "lib/assets/img/pink_shoe.jpg",
      description: "Get freaky on a friday night yeah",
    ),
    Shoe(
      name: "New London",
      price: "32",
      imagePath: "lib/assets/img/red_shoe.jpg",
      description: "Bloody hell mate!",
    ),
    Shoe(
      name: "Sour Cream",
      price: "10.50",
      imagePath: "lib/assets/img/yellow_shoe.jpg",
      description: "Smelling sour, like a fish",
    ),
    Shoe(
      name: "Queen's Delight",
      price: "99.99",
      imagePath: "lib/assets/img/lime_shoe.jpg",
      description: "Nothing like a glass of acid",
    ),
  ];

  // items in a cart
  List<Shoe> shoeCart = [];

  // get list of items for sale
  List<Shoe> getShopList() {
    return shoeShop;
  }

  // getting what's in the cart
  List<Shoe> getCartList() {
    return shoeCart;
  }

  // adding items
  void addItemCart(Shoe shoe) {
    shoeCart.add(shoe);
    notifyListeners();
  }

  // removing items
  void removeItemCart(Shoe shoe) {
    shoeCart.remove(shoe);
    notifyListeners();
  }
}
