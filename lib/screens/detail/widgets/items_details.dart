import 'package:app_e_commerce_provider/models/products_model.dart';
import 'package:flutter/material.dart';

import '../../../core/constans.dart';

class ItemsDetails extends StatelessWidget {
  final Product product;

  const ItemsDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "\$${product.price}",
              style: const TextStyle(
                  fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const SizedBox(height: 10),

        // For rating
        Row(
          children: [
            Container(
              width: 50,
              height: 25,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 14,
                  ),
                  const SizedBox(width: 3),
                  Text(
                    product.rate.toString(),
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 5),
            Text(
              product.review.toString(),
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade600,
              ),
            ),
            const Spacer(),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: "Seller: ",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: product.seller,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
