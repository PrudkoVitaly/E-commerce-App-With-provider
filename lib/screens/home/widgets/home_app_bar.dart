import 'package:flutter/material.dart';

import '../../../core/constans.dart';

Row CustomAppBar() {
  return Row(
    mainAxisAlignment:  MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
        onPressed: () {},
        icon: Image.asset("images/icon.png", height: 20),
        style: IconButton.styleFrom(
          backgroundColor: contentColor,
          padding: const EdgeInsets.all(20),
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.notifications_outlined, size: 30),
        style: IconButton.styleFrom(
          backgroundColor: contentColor,
          padding: const EdgeInsets.all(20),
        ),
      ),
    ],
  );
}