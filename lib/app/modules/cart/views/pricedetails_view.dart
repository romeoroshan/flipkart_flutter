import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

import 'package:get/get.dart';

class PricedetailsView extends GetView {
  const PricedetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Price Details",style: TextStyle(fontWeight: FontWeight.bold),),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Price (3 items)"),
              Text("Rs. 7,140")
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Discount"),
              Text("-Rs. 6,141",style: TextStyle(color: Colors.green),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Delivery Charges"),
              RichText(text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Rs. 40",
                    style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),

                  ),
                  TextSpan(
                    text: " FREE Delivery",
                    style: TextStyle(color: Colors.green)
                  ),
                ]
              ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:10.0),
            child: Dash(
              direction: Axis.horizontal,
              length: MediaQuery.of(context).size.width*.9,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total Amount",style: TextStyle(fontWeight: FontWeight.bold),),
              Text("Rs. 999",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ],
      ),
    );
  }
}
