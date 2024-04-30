import 'package:flip_ui/app/modules/category/views/offers_category_view.dart';
import 'package:flip_ui/app/modules/home/views/bnavbar_view.dart';
import 'package:flip_ui/app/modules/home/views/offers_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  const CategoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          ListTile(
            title: Text("All Categories",style: TextStyle(fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.search),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                
                children: [
                  
                  OffersCategoryView(
                      imgUrl:
                          'https://rukminim2.flixcart.com/flap/490/460/image/0f3d008be60995d4.jpg?q=20'),
                  OffersCategoryView(
                      imgUrl:
                          'https://rukminim2.flixcart.com/flap/490/460/image/42f9a853f9181279.jpg?q=20'),
                  OffersCategoryView(
                      imgUrl:
                          'https://rukminim2.flixcart.com/flap/490/460/image/cbcb478744635781.jpg?q=20'),
                  OffersCategoryView(
                      imgUrl:
                          'https://rukminim2.flixcart.com/flap/490/460/image/913e96c334d04395.jpg?q=20'),
                  OffersCategoryView(
                      imgUrl:
                          'https://rukminim2.flixcart.com/fk-p-flap/490/460/image/07d71cbddb6083ad.jpg?q=20'),
                  OffersCategoryView(
                      imgUrl:
                          'https://rukminim2.flixcart.com/flap/490/460/image/4be8a679014497f0.png?q=20'),
                  OffersCategoryView(
                      imgUrl:
                          'https://rukminim2.flixcart.com/flap/490/460/image/6ecb75e51b607880.jpg?q=20'),
                  OffersCategoryView(
                      imgUrl:
                          'https://rukminim2.flixcart.com/flap/490/460/image/3e6d75f631ab6055.jpg?q=20'),
                  OffersCategoryView(
                      imgUrl:
                          'https://rukminim2.flixcart.com/flap/490/460/image/89d809684711712a.jpg?q=20'),
                  OffersCategoryView(
                      imgUrl:
                          'https://rukminim2.flixcart.com/fk-p-flap/490/460/image/4b0a064d53b4ff28.jpg?q=20'),
                ],
              ),
              Column(
                
                
                
                children: [
                  Text("Popular Store",style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OffersView(
                      imgUrl:
                          'https://rukminim2.flixcart.com/flap/490/460/image/0f3d008be60995d4.jpg?q=20'),
                  OffersView(
                      imgUrl:
                          'https://rukminim2.flixcart.com/flap/490/460/image/42f9a853f9181279.jpg?q=20'),
                  OffersView(
                      imgUrl:
                          'https://rukminim2.flixcart.com/flap/490/460/image/cbcb478744635781.jpg?q=20'),
                  
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BnavbarView(index: 1),
    );
  }
}
