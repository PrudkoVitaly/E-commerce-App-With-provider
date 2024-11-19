import 'package:app_e_commerce_provider/core/constans.dart';
import 'package:app_e_commerce_provider/models/products_model.dart';
import 'package:app_e_commerce_provider/screens/detail/widgets/image_slider.dart';
import 'package:app_e_commerce_provider/screens/detail/widgets/items_details.dart';
import 'package:flutter/material.dart';

import 'description.dart';
import 'widgets/choose_desc.dart';
import 'widgets/detail_app_bar.dart';

class DetailScreen extends StatefulWidget {
  final Product product;

  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0;
  int currentColor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: contentColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // For back button, share and favorite
              const DetailAppBar(),

              // For detail image slider
              ImageSlider(
                onChange: (index) {
                  setState(() {
                    currentImage = index;
                  });
                },
                image: widget.product.image,
                product: widget.product,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                    child: ListView.builder(
                      itemCount: widget.product.images.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 10,
                          child: AnimatedContainer(
                            duration: const Duration(
                              seconds: 1,
                            ),
                            width: currentImage == index ? 15 : 8,
                            height: 10,
                            margin: const EdgeInsets.only(right: 3),
                            decoration: BoxDecoration(
                              color: currentImage == index
                                  ? Colors.black
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                  bottom: 100,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // For product name, price, rating and seller
                    ItemsDetails(product: widget.product),
                    const SizedBox(height: 20),
                    const Text(
                      "Colors",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: List.generate(
                        widget.product.colors.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              currentColor = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(
                              milliseconds: 300,
                            ),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentColor == index
                                  ? Colors.white
                                  : widget.product.colors[index],
                              border: currentColor == index
                                  ? Border.all(
                                      color: widget
                                          .product.colors[index])
                                  : null,
                            ),
                            padding: currentColor == index
                                ? const EdgeInsets.all(4)
                                : null,
                            margin: const EdgeInsets.only(right: 10),
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: widget.product.colors[index],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // For description
                    // Description(
                    //   text: widget.product.title,
                    // ),
                    ChooseDesc(product: widget.product),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
