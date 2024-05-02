// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProductcontainerView extends GetView {
  String imgUrl;
  String title;
  String oldPrice;
  String newPrice;
  String off;
  ProductcontainerView(
      {Key? key,
      required this.imgUrl,
      required this.title,
      required this.oldPrice,
      required this.newPrice,
      required this.off})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      decoration:
          BoxDecoration(border: Border.all(width: 1, color: Colors.grey),borderRadius: BorderRadius.circular(8)),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width*.2,child: Image(image: NetworkImage(imgUrl))),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: const TextStyle(fontSize: 20),),
              const Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey,
                  )
                ],
              ),
              Row(
                children: [
                  Text(oldPrice,style: const TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),),
                  Text(" Rs. $newPrice "),
                  Text("$off off",style: const TextStyle(color: Colors.green),)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
