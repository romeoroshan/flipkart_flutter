// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class OffersCategoryView extends GetView {
  String imgUrl;
  OffersCategoryView({Key? key, required this.imgUrl})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 1,color: const Color.fromARGB(255, 191, 189, 189))),
      width: MediaQuery.of(context).size.width * .2,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Image(image: NetworkImage(imgUrl)),
          ),

        ],
      ),
    );
  }
}
