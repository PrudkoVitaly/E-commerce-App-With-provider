import 'package:app_e_commerce_provider/models/products_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Корзина
class CartProvider extends ChangeNotifier {
  final List<Product> _cart = [];

  List<Product> get cart => _cart;

  void toggleFavorite(Product product) {
    if (_cart.contains(product)) {
      final indexProduct = _cart.indexOf(product);
      _cart[indexProduct].quantity++;
    } else {
      _cart.add(product);
    }
    notifyListeners();
  }

  incrementQuantity(int index) {
    _cart[index].quantity++;
    notifyListeners();
  }

  decrementQuantity(int index) {
    if (_cart[index].quantity > 1) {
      _cart[index].quantity--;
    }
    notifyListeners();
  }

  double totalPrice() {
    double total1 = 0;
    for (var element in _cart) {
      total1 = element.price * element.quantity;
    }
    return total1;
  }

  static CartProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<CartProvider>(context, listen: listen);
  }
}
