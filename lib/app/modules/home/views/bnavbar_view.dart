// ignore_for_file: must_be_immutable

import 'package:flip_ui/app/modules/account/views/account_view.dart';
import 'package:flip_ui/app/modules/cart/views/cart_view.dart';
import 'package:flip_ui/app/modules/category/views/category_view.dart';
import 'package:flip_ui/app/modules/home/views/home_view.dart';
import 'package:flip_ui/app/modules/notifications/views/notifications_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BnavbarView extends GetView {
  int index;
  BnavbarView({Key? key, required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int selectedIndex=index;
    return BottomNavigationBar(
      onTap: (value) {
        if (value==1){
          Get.to(const CategoryView());
        }
        else if(value==2){
          Get.to(const NotificationsView());
        }
        else if(value==0){
          Get.to(const HomeView());
        }
        else if(value==3){
          Get.to(const AccountView());
        }
        else if(value==4){
          Get.to(const CartView());
        }
        
      },
      currentIndex: selectedIndex,
      iconSize: 18,
      selectedLabelStyle: const TextStyle(fontSize: 10),
      unselectedFontSize: 10,
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: 
    const [
      BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.category_outlined),label: "Category"),
      BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined),label: "Notifications"),
      BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: "Account"),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: "Cart"),
    ]
    );
  }
}
