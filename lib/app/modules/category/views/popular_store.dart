// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PopularStore extends GetView {
  String imgUrl;
  PopularStore({Key? key, required this.imgUrl})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .25,
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
