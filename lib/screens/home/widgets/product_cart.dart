import 'package:app_e_commerce_provider/core/constans.dart';
import 'package:app_e_commerce_provider/provider/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/products_model.dart';
import '../../detail/detail_screen.dart';

class ProductCart extends StatefulWidget {
  final Product product;

  const ProductCart({super.key, required this.product});

  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              product: widget.product,
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: contentColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Center(
                  child: Hero(
                    tag: widget.product.image,
                    child: Image.asset(
                      widget.product.image,
                      width: 130,
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    widget.product.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "\$${widget.product.price}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: List.generate(
                        widget.product.colors.length,
                        (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            child: Container(
                                width: 18,
                                height: 18,
                                margin: const EdgeInsets.only(left: 5),
                                decoration: BoxDecoration(
                                  color: widget.product.colors[index],
                                  shape: BoxShape.circle,
                                )),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    provider.toggleFavorite(widget.product);
                  },
                  child: Icon(
                    provider.isExist(widget.product)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    size: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
