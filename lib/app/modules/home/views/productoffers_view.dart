// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProductoffersView extends GetView {
  String imgUrl;
  String title;
  String off;
  ProductoffersView({Key? key,required this.imgUrl,required this.title,required this.off}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(9),color: Colors.white),
      width: MediaQuery.of(context).size.width*.4,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(image: NetworkImage(imgUrl),fit: BoxFit.cover,),
                
              ),
            ),
            Text(title),
            Text("Min. $off Off",style: const TextStyle(color: Colors.green),)
          ],
        ),
      ),
    );
  }
}
