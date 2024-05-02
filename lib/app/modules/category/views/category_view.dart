import 'package:flip_ui/app/modules/category/views/offers_category_view.dart';
import 'package:flip_ui/app/modules/category/views/popular_store.dart';
import 'package:flip_ui/app/modules/home/views/bnavbar_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  const CategoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ListTile(
              title: Text(
                "All Categories",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.search),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(
                                width: 3, color: Theme.of(context).primaryColor)),
                      ),
                      width: MediaQuery.of(context).size.width * .2,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0),
                            child: const Image(image: NetworkImage('https://rukminim2.flixcart.com/flap/490/460/image/0f3d008be60995d4.jpg?q=20')),
                          ),
                        ],
                      ),
                    ),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Popular Store",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/0f3d008be60995d4.jpg?q=20'),
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/42f9a853f9181279.jpg?q=20'),
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/cbcb478744635781.jpg?q=20'),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/0f3d008be60995d4.jpg?q=20'),
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/42f9a853f9181279.jpg?q=20'),
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/cbcb478744635781.jpg?q=20'),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/0f3d008be60995d4.jpg?q=20'),
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/42f9a853f9181279.jpg?q=20'),
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/cbcb478744635781.jpg?q=20'),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    const Text(
                      "More on flipkart",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/0f3d008be60995d4.jpg?q=20'),
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/42f9a853f9181279.jpg?q=20'),
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/cbcb478744635781.jpg?q=20'),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/0f3d008be60995d4.jpg?q=20'),
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/42f9a853f9181279.jpg?q=20'),
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/cbcb478744635781.jpg?q=20'),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/0f3d008be60995d4.jpg?q=20'),
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/42f9a853f9181279.jpg?q=20'),
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/cbcb478744635781.jpg?q=20'),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    const Text(
                      "Have you tried",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/0f3d008be60995d4.jpg?q=20'),
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/42f9a853f9181279.jpg?q=20'),
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/cbcb478744635781.jpg?q=20'),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/0f3d008be60995d4.jpg?q=20'),
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/42f9a853f9181279.jpg?q=20'),
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/cbcb478744635781.jpg?q=20'),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/0f3d008be60995d4.jpg?q=20'),
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/42f9a853f9181279.jpg?q=20'),
                        PopularStore(
                            imgUrl:
                                'https://rukminim2.flixcart.com/flap/490/460/image/cbcb478744635781.jpg?q=20'),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BnavbarView(index: 1),
    );
  }
}
