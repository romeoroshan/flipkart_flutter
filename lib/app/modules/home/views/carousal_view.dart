import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CarousalView extends GetView {
  final List<String> images = [
    'https://www.zingoy.com/blog/wp-content/uploads/2022/09/Flipkart-BBDS-Best-Offers-and-Bank-Discounts-DD-Article-Image-1200-x-675.jpg',
    'https://www.informalnewz.com/wp-content/uploads/2022/09/Flipkart-Big-Billion-Days-Sale-2022-1200x675.jpg',
    'https://pakkafilmy.com/wp-content/uploads/2023/10/Flipkart-Exclusive-Offer-1200x675.jpg',
  ];
  CarousalView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: images.map((image) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
          scrollDirection: Axis.horizontal,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          enlargeCenterPage: true),
    );
  }
}
