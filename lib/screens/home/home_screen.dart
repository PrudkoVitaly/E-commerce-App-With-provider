import 'package:app_e_commerce_provider/screens/home/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

import '../../models/categories_model.dart';
import '../../models/products_model.dart';
import 'widgets/categories.dart';
import 'widgets/image_slider.dart';
import 'widgets/product_cart.dart';
import 'widgets/search_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key,});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _searchQuery = '';
  int currentSlider = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Product> productsSearch =  all;
    // Фильтруем список товаров по строке поиска
    final List<Product> filteredProducts = productsSearch
        .where((product) =>
        product.title.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();

    List<List<Product>> selectedCategory = [
      all,
      shoes,
      beauty,
      womenFashion,
      jewelry,
      menFashion
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              // Custom app bar
              CustomAppBar(),
              const SizedBox(height: 20),

              // Search bar
              MySearchBar(productsSearch: selectedCategory[selectedIndex],),
              const SizedBox(height: 20),

              // Slider
              ImageSlider(
                currentIndex: currentSlider,
                onChange: (value) {
                  setState(() {
                    currentSlider = value;
                  });
                },
              ),
              const SizedBox(height: 20),

              // Categories
              SizedBox(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: selectedIndex == index
                              ? Colors.blue[200]
                              : Colors.transparent,
                        ),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(category.image),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              category.title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              // Text Special for you
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special for you",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // List of products
              Container(
                height: 500,
                child: Expanded(
                  child: filteredProducts.isEmpty
                      ? Center(
                    child: Text(
                      'Товары не найдены',
                    ),
                  )
                      :  // List of products
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.78,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: filteredProducts.length,
                    itemBuilder: (context, index) {
                      final product = filteredProducts;
                      return ProductCart(
                        product: product[index],
                      );
                    },
                  ),
                ),
              ),

              // // List of products
              // GridView.builder(
              //   physics: const NeverScrollableScrollPhysics(),
              //   shrinkWrap: true,
              //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 2,
              //     childAspectRatio: 0.78,
              //     crossAxisSpacing: 20,
              //     mainAxisSpacing: 20,
              //   ),
              //   itemCount: selectedCategory[selectedIndex].length,
              //   itemBuilder: (context, index) {
              //     final product = selectedCategory[selectedIndex];
              //     return ProductCart(
              //       product: product[index],
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
