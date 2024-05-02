import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MissedproductsView extends GetView {
  final String imgUrl;
  final String title;
  final String oldPrice;
  final String newPrice;
  final String percentage;
  const MissedproductsView({Key? key,required this.imgUrl,required this.newPrice,required this.oldPrice,required this.percentage,required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.4,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image(image: NetworkImage(imgUrl)),
            Column(
              children: [
                Text(title,style: const TextStyle(color: Colors.grey),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Rs. $newPrice "),
                    Text(oldPrice,style: const TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),),
                  ],
                ),
                Text("$percentage% off",style: const TextStyle(color: Colors.green),),
                const SizedBox(height: 20,),
                OutlinedButton(onPressed: (){},style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),child: const Text("Add to cart"),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
