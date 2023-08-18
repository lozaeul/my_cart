import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //ChangeNotifier simply implements Listenable and provides some utilities for managing listeners

  //list of items on sale
  final List _shopItems = [
    //[itemname,itemprice,itempath,itemcolor]
    ["Avocado", "60.00", "lib/images/avocado.jpg", Colors.green],
    ["Banana", "40.00", "lib/images/banana.jpg", Colors.yellow],
    ["Burger", "350.00", "lib/images/burger.jpg", Colors.brown],
    ["Soda", "20.00", "lib/images/coca.jpg", Colors.red],
  ];

//list of cart items
  List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  //add items to cart
  void addItemsToCart(int index) {
    _cartItems.add(_shopItems[
        index]); //whether you want to choose avocado, burger, soda... to add to cartitems
    notifyListeners();
  }

  //remove from cart items
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate the total price of cart
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]); //1 is the index of price
    }
    return totalPrice.toStringAsFixed(2); //convert to 2 deciml place string
  }
}
