// ignore_for_file: prefer_const_constructors

import 'package:flip_ui/app/modules/cart/views/cleartrip_view.dart';
import 'package:flip_ui/app/modules/cart/views/missedproducts_view.dart';
import 'package:flip_ui/app/modules/cart/views/pricedetails_view.dart';
import 'package:flip_ui/app/modules/cart/views/product_view.dart';
import 'package:flip_ui/app/modules/home/views/bnavbar_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "My Cart",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Row(
                children: [
                  Container(
                    width: sWidth * .45,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 2, color: theme.primaryColor))),
                    child: Center(
                        child: Text(
                      "Flipkart (1)",
                      style: TextStyle(
                          color: theme.primaryColor,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  SizedBox(
                    width: sWidth * .45,
                    height: 40,
                    child: Center(
                        child: Text(
                      "Grocery",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    )),
                  ),
                ],
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 212, 212, 212),
              height: 1.5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Deliver to: "),
                  Text(
                    "Kottayam - 686516",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: sWidth * .1,
                  ),
                  SizedBox(
                    width: sWidth * .27,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      child: Text("Change"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: const Color.fromARGB(255, 78, 168, 243)),
                  color: Color.fromARGB(29, 131, 191, 240),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: const [
                        Text(
                          "2,00,000+ orders from Kottayam in the last 30 days",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 212, 212, 212),
              height: 8,
            ),
            ProductView(
                imgUrl:
                    'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRFwI5njmtkcSU2_XhhP196bIp-JeksLaeXcJU6xBiv8J8HgQTtwHvkBSwmdkKmw0yQx0LiRVHMtNYyphDtyXBa87NBXP_ZxTOzZKNU2TNvIRdAvMMAS4Ra5g&usqp=CAE',
                title: 'iPhone 15',
                oldPrice: '100000',
                newPrice: '25000',
                off: '75'),
            Center(
                child: CleartripView(
                    date: "30-Dec-24", price: "1000", type: "Hotel Booking")),
            SizedBox(
              height: 10,
            ),
            Center(
                child: CleartripView(
                    date: "30-Dec-24", price: "1000", type: "Hotel Booking")),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: sWidth * .5,
                  height: 40,
                  child: Center(
                      child: Text(
                    "Save it for later",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  )),
                  decoration: BoxDecoration(
                      border: Border(
                          right: BorderSide(color: Colors.grey),
                          top: BorderSide(color: Colors.grey),
                          bottom: BorderSide(color: Colors.grey))),
                ),
                Container(
                  width: sWidth * .5,
                  height: 40,
                  child: Center(
                      child: Text(
                    "Remove",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  )),
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey),
                          bottom: BorderSide(color: Colors.grey))),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(child: PricedetailsView()),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.grey,
              height: .5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "You will save Rs. 6,141 on this order",
                style: TextStyle(color: Colors.green),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 214, 214, 214),
              width: sWidth,
              height: 80,
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shield,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                        width: sWidth * .7,
                        child: Text(
                            "Safe and secure payments. Easy returns. 100% Authentic products"))
                  ],
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Text(
                        "7,140",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 10),
                      ),
                      Text(
                        "999",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Place Order"),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: Colors.yellow,
                        foregroundColor: Colors.black),
                  )
                ],
              ),
              
            ),
            Container(
              color: Colors.grey,
              height: .5,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Items you have missed",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MissedproductsView(imgUrl:
                    'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRFwI5njmtkcSU2_XhhP196bIp-JeksLaeXcJU6xBiv8J8HgQTtwHvkBSwmdkKmw0yQx0LiRVHMtNYyphDtyXBa87NBXP_ZxTOzZKNU2TNvIRdAvMMAS4Ra5g&usqp=CAE',
                title: 'iPhone 15',
                oldPrice: '100000',
                newPrice: '25000', percentage: "57"),
                MissedproductsView(imgUrl:
                    'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRFwI5njmtkcSU2_XhhP196bIp-JeksLaeXcJU6xBiv8J8HgQTtwHvkBSwmdkKmw0yQx0LiRVHMtNYyphDtyXBa87NBXP_ZxTOzZKNU2TNvIRdAvMMAS4Ra5g&usqp=CAE',
                title: 'iPhone 15',
                oldPrice: '100000',
                newPrice: '25000', percentage: "57"),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              color: const Color.fromARGB(255, 220, 219, 219),
              height: 20,
            )
          ],
        ),
      ),
      bottomNavigationBar: BnavbarView(index: 4),
    );
  }
}
