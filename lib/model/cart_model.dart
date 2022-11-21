import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Avocado", "8.00", "images/avocado.png", Colors.green],
    ["Banana", "6.00", "images/banana.png", Colors.yellow],
    ["Chicken", "12.60", "images/chicken.png", Colors.brown],
    ["Water", "2.00", "images/water.png", Colors.blue],
  ];

  get shopItems => _shopItems;

  List _cartItems = [];

  get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }

    return totalPrice.toStringAsFixed(2);
  }
}
