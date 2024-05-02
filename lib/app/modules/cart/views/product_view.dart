// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProductView extends GetView {
  String imgUrl;
  String title;
  String oldPrice;
  String newPrice;
  String off;
  ProductView(
      {Key? key,
      required this.imgUrl,
      required this.title,
      required this.oldPrice,
      required this.newPrice,
      required this.off})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:12.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .9,
        height: 150,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width*.2,child: Image(image: NetworkImage(imgUrl))),
                    const SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(1)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical:1.0,horizontal: 10),
                        child: Text("Qty: 1"),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,style: const TextStyle(fontSize: 18),),
                    const Text("Carbon Blue",style: TextStyle(color: Colors.grey,fontSize: 10),),
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(oldPrice,style: const TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),),
                        Text(" Rs. $newPrice "),
                        Text("$off% off",style: const TextStyle(color: Colors.green),),
                        
                      ],
                    ),
                    const Text("4 Offers applied",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 12),),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal:15.0,vertical: 8),
              child: Row(
                children: [
                  Text("Delivery by May 5, Sun, ",style: TextStyle(fontSize: 10),),
                  Text("Rs. 40 ",style: TextStyle(fontSize: 10,color: Colors.grey),),
                  Text("FREE",style: TextStyle(fontSize: 10,color: Colors.green),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
