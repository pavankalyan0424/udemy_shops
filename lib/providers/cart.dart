import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem({
    this.id,
    this.title,
    this.quantity,
    this.price,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  void addItem(String productId, double price, String title) {
    if (_items.containsKey(productId)) {
      _items.update(
          productId,
              (existingCartItem) =>
              CartItem(
                  quantity: existingCartItem.quantity + 1,
                  price: existingCartItem.price,
                  id: existingCartItem.id,
                  title: existingCartItem.title));
    } else {
      _items.putIfAbsent(
        productId,
            () =>
            CartItem(
              title: title,
              id: DateTime.now().toString(),
              price: price,
              quantity: 1,),);
    }
    notifyListeners();
  }
  void removeItem(String id){
    _items.remove(id);
    notifyListeners();
  }
  int get itemsCount {
    return _items.length;
  }

  double get totalAmount {
    double total = 0.0;
    _items.forEach((key, value) {
      total += value.price * value.quantity;
    });
    return total;
  }
}
