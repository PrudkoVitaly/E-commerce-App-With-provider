import 'package:app_e_commerce_provider/core/constans.dart';
import 'package:app_e_commerce_provider/screens/home/home_screen.dart';
import 'package:app_e_commerce_provider/screens/home/widgets/product_cart.dart';
import 'package:flutter/material.dart';

import '../../../models/products_model.dart';

class MySearchBar extends StatefulWidget {
  final List<Product> productsSearch;
  const MySearchBar({
    super.key, required this.productsSearch,
  });

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {

  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final List<Product> products = widget.productsSearch;
    // Фильтруем список товаров по строке поиска
    final List<Product> filteredProducts = products
        .where((product) =>
            product.title.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();

    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: contentColor,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.search,
                color: Colors.grey,
                size: 30,
              ),
              const SizedBox(width: 10),
              Flexible(
                flex: 4,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      _searchQuery = value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Search...",
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                height: 25,
                width: 1.5,
                color: Colors.grey,
              ),
              IconButton(
                onPressed: () {
                  for (var i = 0; i < products.length; i++) {
                    print(products[i].title);
                  }
                },
                icon: const Icon(
                  Icons.tune,
                  color: Colors.grey,
                ),
              ),

            ],
          ),

          // Expanded(
          //   child: filteredProducts.isEmpty
          //       ? Center(
          //     child: Text(
          //       'Товары не найдены',
          //     ),
          //   )
          //       :  // List of products
          //   GridView.builder(
          //     physics: const NeverScrollableScrollPhysics(),
          //     shrinkWrap: true,
          //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2,
          //       childAspectRatio: 0.78,
          //       crossAxisSpacing: 20,
          //       mainAxisSpacing: 20,
          //     ),
          //     itemCount: filteredProducts.length,
          //     itemBuilder: (context, index) {
          //       final product = filteredProducts;
          //       return ProductCart(
          //         product: product[index],
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
