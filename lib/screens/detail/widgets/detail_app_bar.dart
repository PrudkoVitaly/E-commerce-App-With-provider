import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/constans.dart';
import '../../../models/products_model.dart';
import '../../../provider/favorite_provider.dart';

class DetailAppBar extends StatelessWidget {
  final Product product;
  const DetailAppBar({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_outlined,
            ),
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(10),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {

            },
            icon: const Icon(
              Icons.share_outlined,
            ),
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(10),
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {
              provider.toggleFavorite(product);
            },
            icon: provider.isExist(product) ?  const Icon(
              Icons.favorite
            ) : const Icon(
              Icons.favorite_border
            ),
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(10),
            ),
          ),
        ],
      ),
    );
  }
}
