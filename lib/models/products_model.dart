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

final List<Product> all = [
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
      "Description": "Wireless headphones with excellent sound quality.",
      "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
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
      "Description": "A modern smart watch with health tracking features.",
      "Specifications": "Heart Rate Monitor, GPS, 7-day Battery Life.",
      "Reviews": "20 customers rated it with an average of 4.0 stars.",
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
    image: "images/shoes/Air_Jordan.png",
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
      "images/shoes/Air_Jordan.png",
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
      "images/beauty/perfume.png","images/beauty/perfume.png","images/beauty/perfume.png",
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
    title: "Pants",
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
    category: "womenFashion",
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

final List<Product> shoes = [
  Product(
    title: "Air Jordan",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/shoes/Air_Jordan.png",
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
    images: ["images/shoes/Air_Jordan.png", "images/shoes/Air_Jordan.png"],
      tabs: {
        "Description": "Wireless headphones with excellent sound quality.",
        "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
        "Reviews": "320 reviews with an average rating of 4.8 stars.",
      }
  ),
  Product(
    title: "Vans Old Skool",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/shoes/vans old skool.png",
    price: 300,
    seller: "Mrs Store",
    colors: [
      Colors.blueAccent,
      Colors.blueGrey,
      Colors.green,
    ],
    category: "Shoes",
    review: "(200 Reviews)",
    rate: 5.0,
    quantity: 1,
    images: ["images/shoes/vans old skool.png","images/shoes/vans old skool.png","images/shoes/vans old skool.png",],
      tabs: {
        "Description": "Wireless headphones with excellent sound quality.",
        "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
        "Reviews": "320 reviews with an average rating of 4.8 stars.",
      }
  ),
  Product(
    title: "Women-Shoes",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/shoes/vans old skool.png",
    price: 500,
    seller: "Shoes Store",
    colors: [
      Colors.red,
      Colors.orange,
      Colors.greenAccent,
    ],
    category: "Shoes",
    review: "(100 Reviews)",
    rate: 4.8,
    quantity: 1,
    images: ["images/shoes/vans old skool.png","images/shoes/vans old skool.png",],
      tabs: {
        "Description": "Wireless headphones with excellent sound quality.",
        "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
        "Reviews": "320 reviews with an average rating of 4.8 stars.",
      }
  ),
  Product(
    title: "Sports Shoes",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/shoes/sports shoes.png",
    price: 155,
    seller: "Hari Store",
    colors: [
      Colors.deepPurpleAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Shoes",
    review: "(60 Reviews)",
    rate: 3.0,
    quantity: 1,
    images: ["images/shoes/sports shoes.png","images/shoes/sports shoes.png","images/shoes/sports shoes.png","images/shoes/sports shoes.png",],
      tabs: {
        "Description": "Wireless headphones with excellent sound quality.",
        "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
        "Reviews": "320 reviews with an average rating of 4.8 stars.",
      }
  ),
  Product(
    title: "White Sneaker",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/shoes/white sneaker.png",
    price: 1000,
    seller: "Jacket Store",
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Shoes",
    review: "(00 Reviews)",
    rate: 0.0,
    quantity: 1,
    images: ["images/shoes/white sneaker.png","images/shoes/white sneaker.png",],
      tabs: {
        "Description": "Wireless headphones with excellent sound quality.",
        "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
        "Reviews": "320 reviews with an average rating of 4.8 stars.",
      }
  ),
];

final List<Product> beauty = [
  Product(
    title: "Face Care Product",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/beauty/face care.png",
    price: 1500,
    seller: "Yojana Seller",
    colors: [
      Colors.pink,
      Colors.amber,
      Colors.deepOrangeAccent,
    ],
    category: "Beauty",
    review: "(200 Reviews)",
    rate: 4.0,
    quantity: 1,
    images: ["images/beauty/face care.png","images/beauty/face care.png",],
      tabs: {
        "Description": "Wireless headphones with excellent sound quality.",
        "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
        "Reviews": "320 reviews with an average rating of 4.8 stars.",
      }
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
    images: ["images/beauty/perfume.png","images/beauty/perfume.png","images/beauty/perfume.png","images/beauty/perfume.png",],
      tabs: {
        "Description": "Wireless headphones with excellent sound quality.",
        "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
        "Reviews": "320 reviews with an average rating of 4.8 stars.",
      }
  ),
  Product(
    title: "Skin-Care Product",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/beauty/skin-care.png",
    price: 999,
    seller: "Mr Beast",
    colors: [
      Colors.black12,
      Colors.orange,
      Colors.white38,
    ],
    category: "Beauty",
    review: "(20 Reviews)",
    rate: 4.2,
    quantity: 1,
    images: ["images/beauty/skin-care.png","images/beauty/skin-care.png","images/beauty/skin-care.png",],
      tabs: {
        "Description": "Wireless headphones with excellent sound quality.",
        "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
        "Reviews": "320 reviews with an average rating of 4.8 stars.",
      }
  ),
];

final List<Product> womenFashion = [
  Product(
    title: " Women Kurta",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/women_fashion/kurta.png",
    price: 299,
    seller: "Sila Store",
    colors: [
      Colors.grey,
      Colors.black54,
      Colors.purple,
    ],
    category: "womenFashion",
    review: "(25 Reviews)",
    rate: 5.0,
    quantity: 1,
    images: ["images/women_fashion/kurta.png","images/women_fashion/kurta.png",],
      tabs: {
        "Description": "Wireless headphones with excellent sound quality.",
        "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
        "Reviews": "320 reviews with an average rating of 4.8 stars.",
      }
  ),
  Product(
    title: "Mens Jacket",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/women_fashion/lehenga.png",
    price: 666,
    seller: "My Store",
    colors: [
      Colors.black,
      Colors.orange,
      Colors.green,
    ],
    category: "womenFashion",
    review: "(100 Reviews)",
    rate: 4.0,
    quantity: 1,
    images: [ "images/women_fashion/lehenga.png", "images/women_fashion/lehenga.png", "images/women_fashion/lehenga.png",],
      tabs: {
        "Description": "Wireless headphones with excellent sound quality.",
        "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
        "Reviews": "320 reviews with an average rating of 4.8 stars.",
      }
  ),
  Product(
    title: "T-Shert",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/women_fashion/t-shert.png",
    price: 155,
    seller: "Love Store",
    colors: [
      Colors.blueAccent,
      Colors.redAccent,
      Colors.deepOrangeAccent,
    ],
    category: "Electronics",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
    images: [],
      tabs: {
        "Description": "Wireless headphones with excellent sound quality.",
        "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
        "Reviews": "320 reviews with an average rating of 4.8 stars.",
      }
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
    category: "womenFashion",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
    images: [ "images/women_fashion/pants.png", "images/women_fashion/pants.png", "images/women_fashion/pants.png", "images/women_fashion/pants.png", "images/women_fashion/pants.png",],
      tabs: {
        "Description": "Wireless headphones with excellent sound quality.",
        "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
        "Reviews": "320 reviews with an average rating of 4.8 stars.",
      }
  ),
];
final List<Product> jewelry = [
  Product(
    title: "Earrings",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/jewelry/earrings.png",
    price: 3000,
    seller: "Gold Store",
    colors: [
      Colors.amber,
      Colors.deepPurple,
      Colors.pink,
    ],
    category: "Jewelry",
    review: "(320 Reviews)",
    rate: 4.5,
    quantity: 1,
    images: [],
      tabs: {
        "Description": "Wireless headphones with excellent sound quality.",
        "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
        "Reviews": "320 reviews with an average rating of 4.8 stars.",
      }
  ),
  Product(
    title: "Jewelry-Box",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/jewelry/jewelry-box.png",
    price: 300,
    seller: "Love Love",
    colors: [
      Colors.pink,
      Colors.orange,
      Colors.redAccent,
    ],
    category: "Jewelry",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
    images: [],
    tabs: {
      "Description": "Wireless headphones with excellent sound quality.",
      "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
      "Reviews": "320 reviews with an average rating of 4.8 stars.",
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
    images: [],
      tabs: {
        "Description": "Wireless headphones with excellent sound quality.",
        "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
        "Reviews": "320 reviews with an average rating of 4.8 stars.",
      }
  ),
  Product(
    title: "Necklace-Jewellery",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/jewelry/necklace-jewellery.png",
    price: 5000,
    seller: "Jewellery Store",
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Jewellery",
    review: "(22 Reviews)",
    rate: 3.5,
    quantity: 1,
    images: [],
      tabs: {
        "Description": "Wireless headphones with excellent sound quality.",
        "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
        "Reviews": "320 reviews with an average rating of 4.8 stars.",
      }
  ),
];
final List<Product> menFashion = [
  Product(
    title: "Man Jacket",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/men_fashion/man jacket.png",
    price: 500,
    seller: "Men Store",
    colors: [
      Colors.brown,
      Colors.orange,
      Colors.blueGrey,
    ],
    category: "MenFashion",
    review: "(90 Reviews)",
    rate: 5.0,
    quantity: 1,
    images: [],
      tabs: {
        "Description": "Wireless headphones with excellent sound quality.",
        "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
        "Reviews": "320 reviews with an average rating of 4.8 stars.",
      }
  ),
  Product(
    title: "Men Pants",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/men_fashion/pants.png",
    price: 400,
    seller: "My Store",
    colors: [
      Colors.black54,
      Colors.orange,
      Colors.green,
    ],
    category: "MenFashion",
    review: "(500 Reviews)",
    rate: 4.5,
    quantity: 1,
    images: [],
      tabs: {
        "Description": "Wireless headphones with excellent sound quality.",
        "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
        "Reviews": "320 reviews with an average rating of 4.8 stars.",
      }
  ),
  Product(
    title: "Men Shert",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/men_fashion/shert.png",
    price: 300,
    seller: "Roman Store",
    colors: [
      Colors.pink,
      Colors.amber,
      Colors.green,
    ],
    category: "menFashion",
    review: "(200 Reviews)",
    rate: 3.0,
    quantity: 1,
    images: [],
      tabs: {
        "Description": "Wireless headphones with excellent sound quality.",
        "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
        "Reviews": "320 reviews with an average rating of 4.8 stars.",
      }
  ),
  Product(
    title: "T-Shirt",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/men_fashion/t-shirt.png",
    price: 200,
    seller: "Hot Store",
    colors: [
      Colors.brown,
      Colors.orange,
      Colors.blue,
    ],
    category: "MenFashion",
    review: "(1k Reviews)",
    rate: 5.0,
    quantity: 1,
    images: [],
      tabs: {
        "Description": "Wireless headphones with excellent sound quality.",
        "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
        "Reviews": "320 reviews with an average rating of 4.8 stars.",
      }
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
    images: [],
      tabs: {
        "Description": "Wireless headphones with excellent sound quality.",
        "Specifications": "Bluetooth 5.0, Noise Cancelling, 20h Battery Life.",
        "Reviews": "320 reviews with an average rating of 4.8 stars.",
      }
  ),
];
