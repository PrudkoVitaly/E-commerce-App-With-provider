import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final int currentIndex;

  const ImageSlider(
      {super.key, required this.onChange, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: PageView(
              onPageChanged:  onChange,
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              physics: const ClampingScrollPhysics(),
              children: [
                Image.asset(
                  "images/slider.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "images/slider3.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "images/image1.png",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => AnimatedContainer(
                  duration: const Duration(
                    seconds: 1,
                  ),
                  width:  currentIndex == index ? 15 : 8,
                  height: 8,
                  margin:  const EdgeInsets.only(right: 3),
                  decoration:  BoxDecoration(
                    color: currentIndex == index ? Colors.black : Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
