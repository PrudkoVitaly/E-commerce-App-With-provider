import 'package:app_e_commerce_provider/models/products_model.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final String image;
  final Product product;

  const ImageSlider({
    super.key,
    required this.onChange,
    required this.image,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Hero(
        tag: image,
        child: PageView.builder(
          itemCount: product.images.length,
          onPageChanged: onChange,
          itemBuilder: (context, index) {
            return Image.asset(image);
          },
        ),
      ),
    );
  }
}
