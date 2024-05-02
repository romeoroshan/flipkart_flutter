import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CleartripView extends GetView {
  final String price;
  final String type;
  final String date;
  const CleartripView({Key? key,required this.date, required this.price, required this.type}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double sWidth=MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 235, 235, 235)
      ),
      width: sWidth*.9,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: sWidth*.6,
                      child: Text("ClearTrip Flat Rs. $price off on $type booking",style: const TextStyle(fontWeight: FontWeight.bold),)),
                    Text(date,style: const TextStyle(fontSize: 12,color: Colors.grey),),
                  ],
                ),
                const Icon(Icons.abc)
              ],
            ),
            const SizedBox(height: 10,),
            const Row(
              children: [
                Text("Rs. 0 "),
                Text("FREE Delivery",style: TextStyle(color: Colors.green),),
              ],
            ),
            const SizedBox(height:20),
            const Text("This is a free giveaway as part of your purchase. Flipkart does not share your personal details with these third-party apps",style: TextStyle(fontSize: 12),)
          ],
        ),
      ),
    );
  }
}
