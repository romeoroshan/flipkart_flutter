// ignore_for_file: must_be_immutable

import 'package:flip_ui/app/modules/category/views/category_view.dart';
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
        print(value);
        if (value==1){
          Get.to(CategoryView());

        }
      },
      currentIndex: selectedIndex,
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
