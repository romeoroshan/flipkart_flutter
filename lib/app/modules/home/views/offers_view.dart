// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class OffersView extends GetView {
  String imgUrl;
  OffersView({Key? key, required this.imgUrl})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
