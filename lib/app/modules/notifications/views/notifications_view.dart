// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flip_ui/app/modules/home/views/bnavbar_view.dart';
import 'package:flip_ui/app/modules/notifications/views/notify_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/notifications_controller.dart';

class NotificationsView extends GetView<NotificationsController> {
  const NotificationsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 233, 233),
      body: Column(
        children: [
          
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text(
                        "Notifications (2)",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(27, 66, 170, 255),
                      border: Border.all(color: Theme.of(context).primaryColor),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical:4.0,horizontal: 15),
                      child: Text("All",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical:4.0,horizontal: 15),
                      child: Row(
                        children: [
                          Icon(Icons.local_offer,size: 14,color: Colors.grey,),
                          Text(" Offers",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical:4.0,horizontal: 15),
                      child: Row(
                        children: [
                          Icon(Icons.info,size: 14,color: Colors.grey,),
                          Text(" Reminders",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,)
              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: NotifyView(title: "Price Drop on your favorites", days: "3", desc: "Price dropped by 81% on MRP(Now at Rs. 999) on boAt.", imgUrl: "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQTfVCIgx3SWfBsI8AOwsVN5dY6Y4-2ugrVUh_K6adULxuM6EqbspVALSDooSOzWMAVVgoD8__b-eY8qR4KwZXrkYRP8S9HRU96mEo619q1LMRPgPe3PcnA&usqp=CAE"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10.0),
            child: NotifyView(title: "Hey! Product is waiting in your Cart", days: "3", desc: ".. is waiting in your cart. Our popular products go fast - don't miss! ", imgUrl: "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQTfVCIgx3SWfBsI8AOwsVN5dY6Y4-2ugrVUh_K6adULxuM6EqbspVALSDooSOzWMAVVgoD8__b-eY8qR4KwZXrkYRP8S9HRU96mEo619q1LMRPgPe3PcnA&usqp=CAE"),
          ),
        ],
      ),
      bottomNavigationBar: BnavbarView(index: 2),
    );
  }
}
