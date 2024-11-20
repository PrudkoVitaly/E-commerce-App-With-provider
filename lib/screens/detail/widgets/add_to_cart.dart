import 'package:app_e_commerce_provider/core/constans.dart';
import 'package:app_e_commerce_provider/models/products_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/cart_provider.dart';
import '../../cart/cart_screen.dart';

class AddToCart extends StatefulWidget {
  final Product product;

  const AddToCart({super.key, required this.product});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 75,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.black,
        ),
        padding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      if (currentIndex > 1) {
                        setState(() {
                          currentIndex--;
                        });
                      }
                    },
                    icon: const Icon(
                      Icons.remove,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    currentIndex.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(width: 5),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        currentIndex++;
                      });
                    },
                    icon: const Icon(
                      Icons.add,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                provider.toggleFavorite(widget.product);
                const snackBar = SnackBar(
                  content: Text(
                    "Successfully added to cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  duration: Duration(seconds: 1),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Container(
                height: 45,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Text(
                  "Add to Cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
