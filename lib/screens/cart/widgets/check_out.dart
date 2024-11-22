import 'package:app_e_commerce_provider/core/constans.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/cart_provider.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    return Container(
      height: 300,
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: contentColor,
              hintText: "Enter Discount code",
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              suffixIcon: TextButton(
                onPressed: () {},
                child: Text(
                  "Apply",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                  ),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Subtotal",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "\$ ${provider.totalPrice().toString()}",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "\$ ${provider.totalPrice().toString()}",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              minimumSize: Size(double.infinity, 50),
              padding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 20,
              ),
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(10),
              // ),
            ),
            child: Text(
              "Check Out",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
