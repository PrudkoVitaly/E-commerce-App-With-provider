import 'package:app_e_commerce_provider/core/constans.dart';
import 'package:app_e_commerce_provider/models/products_model.dart';
import 'package:flutter/material.dart';

class ChooseDesc extends StatefulWidget {
  final Product product;

  const ChooseDesc({super.key, required this.product});

  @override
  State<ChooseDesc> createState() => _ChooseDescState();
}

class _ChooseDescState extends State<ChooseDesc> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: widget.product.tabs.keys
                .toList()
                .asMap()
                .entries
                .map((entry) {
              int index = entry.key;
              String tabTitle = entry.value;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedTabIndex = index;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 8),
                  decoration: BoxDecoration(
                    color: selectedTabIndex == index
                        ? primaryColor
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: selectedTabIndex == index
                          ? primaryColor
                          : Colors.transparent,
                    ),
                  ),
                  child: Text(
                    tabTitle,
                    style: TextStyle(
                      color: selectedTabIndex == index
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              );
            }).toList()),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            widget.product.tabs.values.toList()[selectedTabIndex],
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
