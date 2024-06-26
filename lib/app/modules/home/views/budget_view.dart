// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BudgetView extends GetView {
  String price;
  BudgetView({Key? key,required this.price}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.45,
      height: 100,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Color.fromARGB(255, 111, 1, 175), Colors.purple]),
              borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Under",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                      Text("Rs. $price",style: const TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  const Icon(Icons.currency_rupee,size: 80,color: Color.fromARGB(125, 255, 255, 255),)
                ],
              ),
    );
  }
}
