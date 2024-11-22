import 'package:app_e_commerce_provider/provider/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    final cartList = provider.favorites;

    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: provider.favorites.length,
          itemBuilder: (context, index) {
            final favoriteItem = provider.favorites[index];
            return ListTile(
              title: Text(favoriteItem.title),
            );
          },
        ),
      ),
    );
  }
}
