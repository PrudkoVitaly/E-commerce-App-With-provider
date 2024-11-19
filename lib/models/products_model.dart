import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final List<String> images;
  final String category;
  final double rate;
  int quantity;
  final Map<String, String> tabs;

  Product({
    required this.title,
    required this.images,
    required this.review,
    required this.description,
    required this.image,
    required this.price,
    required this.colors,
    required this.seller,
    required this.category,
    required this.rate,
    required this.quantity,
    required this.tabs,
  });
}

final List<Product> products = [
  Product(
    title: "Wireless Headphones",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/all/wireless.png",
    price: 120,
    seller: "Tariqul isalm",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "Electronics",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
    images: [
      "images/all/wireless.png",
      "images/all/wireless.png",
    ],
    tabs: {
      "Description":
          "Wireless headphones with excellent sound quality.",
      "Specifications":
          "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
      "Reviews": "320 reviews with an average rating of 4.8 stars.",
    },
  ),
  Product(
    title: "Woman Sweter",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/all/sweet.png",
    price: 120,
    seller: "Joy Store",
    colors: [
      Colors.brown,
      Colors.deepPurple,
      Colors.pink,
    ],
    category: "Woman Fashion",
    review: "(32 Reviews)",
    rate: 4.5,
    quantity: 1,
    images: [
      "images/all/sweet.png",
      "images/all/sweet.png",
      "images/all/sweet.png",
    ],
    tabs: {
      "Description": "Soft sweater made from premium materials.",
      "Specifications": "Available in multiple colors and sizes.",
      "Reviews": "32 positive reviews from satisfied customers.",
    },
  ),
  Product(
    title: "Smart Watch",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/all/miband.jpg",
    price: 55,
    seller: "Ram Das",
    colors: [
      Colors.black,
      Colors.amber,
      Colors.purple,
    ],
    category: "Electronics",
    review: "(20 Reviews)",
    rate: 4.0,
    quantity: 1,
    images: [
      "images/all/miband.jpg",
      "images/all/miband.jpg",
      "images/all/miband.jpg",
      "images/all/miband.jpg",
    ],
    tabs: {
      "Description":
          "A modern smart watch with health tracking features.",
      "Specifications":
          "Heart Rate Monitor, GPS, 7-day Battery Life.",
      "Reviews":
          "20 customers rated it with an average of 4.0 stars.",
    },
  ),
  Product(
    title: "Mens Jacket",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/all/jacket.png",
    price: 155,
    seller: "Jacket Store",
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Men Fashion",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
    images: [
      "images/all/jacket.png",
      "images/all/jacket.png",
      "images/all/jacket.png",
      "images/all/jacket.png",
      "images/all/jacket.png",
    ],
    tabs: {
      "Description": "Timeless elegance and precision engineering.",
      "Specifications": "Quartz movement, Water-resistant up to 50m.",
      "Reviews": "100 satisfied customers rated it 5.0.",
    },
  ),
  Product(
    title: "Watch",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/men_fashion/watch.png",
    price: 1000,
    seller: "Jacket Store",
    colors: [
      Colors.lightBlue,
      Colors.orange,
      Colors.purple,
    ],
    category: "MenFashion",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
    images: [
      "images/men_fashion/watch.png",
      "images/men_fashion/watch.png",
      "images/men_fashion/watch.png",
      "images/men_fashion/watch.png",
      "images/men_fashion/watch.png",
      "images/men_fashion/watch.png",
    ],
    tabs: {
      "Description": "Soft sweater made from premium materials.",
      "Specifications": "Available in multiple colors and sizes.",
      "Reviews": "32 positive reviews from satisfied customers.",
    },
  ),
  Product(
    title: "Air Jordan",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/shoes/Air Jordan.png",
    price: 255,
    seller: "The Seller",
    colors: [
      Colors.grey,
      Colors.amber,
      Colors.purple,
    ],
    category: "Shoes",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
    images: [
      "images/shoes/Air Jordan.png",
    ],
    tabs: {
      "Description": "A blend of exotic fragrances.",
      "Specifications": "50ml, lasts up to 12 hours.",
      "Reviews": "99 positive reviews from fragrance lovers.",
    },
  ),
  Product(
    title: "Super Perfume",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/beauty/perfume.png",
    price: 155,
    seller: "Love Seller",
    colors: [
      Colors.purpleAccent,
      Colors.pinkAccent,
      Colors.green,
    ],
    category: "Beauty",
    review: "(99 Reviews)",
    rate: 4.7,
    quantity: 1,
    images: [
      "images/beauty/perfume.png",
    ],
    tabs: {
      "Description": "Soft sweater made from premium materials.",
      "Specifications": "Available in multiple colors and sizes.",
      "Reviews": "32 positive reviews from satisfied customers.",
    },
  ),
  Product(
    title: "Wedding Ring",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/jewelry/wedding ring.png",
    price: 155,
    seller: "I Am Seller",
    colors: [
      Colors.brown,
      Colors.purpleAccent,
      Colors.blueGrey,
    ],
    category: "Jewelry",
    review: "(80 Reviews)",
    rate: 4.5,
    quantity: 1,
    images: [
      "images/jewelry/wedding ring.png",
    ],
    tabs: {
      "Description": "A symbol of eternal love.",
      "Specifications": "Gold plated, available in multiple sizes.",
      "Reviews": "80 happy customers rated it 4.5 stars.",
    },
  ),
  Product(
    title: "  Pants",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/women_fashion/pants.png",
    price: 155,
    seller: "PK Store",
    colors: [
      Colors.lightGreen,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    category: "WomenFashion",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
    images: [
      "images/women_fashion/pants.png",
    ],
    tabs: {
      "Description": "Soft sweater made from premium materials.",
      "Specifications": "Available in multiple colors and sizes.",
      "Reviews": "32 positive reviews from satisfied customers.",
    },
  ),
];
