import 'package:app_e_commerce_provider/core/constans.dart';
import 'package:app_e_commerce_provider/screens/home/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            ],
          ),
        ),
      ),
    );
  }
}
