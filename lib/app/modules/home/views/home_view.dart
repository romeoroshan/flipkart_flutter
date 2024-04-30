import 'package:flip_ui/app/modules/home/views/bnavbar_view.dart';
import 'package:flip_ui/app/modules/home/views/budget_view.dart';
import 'package:flip_ui/app/modules/home/views/carousal_view.dart';
import 'package:flip_ui/app/modules/home/views/offers_view.dart';
import 'package:flip_ui/app/modules/home/views/productcontainer_view.dart';
import 'package:flip_ui/app/modules/home/views/productoffers_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 212, 230, 238),
                  Color.fromARGB(255, 238, 242, 245)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: sWidth * .09,
                          child: Image.asset('logo.png'),
                        ),
                        Text(
                          " Flipkart",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Column(
                            children: [
                              Text(
                                "Brand Mall",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Switch(value: false, onChanged: null)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: SizedBox(
                            width: sWidth * .6,
                            height: 45,
                            child: const TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                prefixIcon: Icon(Icons.search),
                                hintText: "Search for products",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            CarousalView(),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
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
                  OffersView(
                      imgUrl:
                          'https://rukminim2.flixcart.com/flap/490/460/image/913e96c334d04395.jpg?q=20'),
                  OffersView(
                      imgUrl:
                          'https://rukminim2.flixcart.com/fk-p-flap/490/460/image/07d71cbddb6083ad.jpg?q=20'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OffersView(
                      imgUrl:
                          'https://rukminim2.flixcart.com/flap/490/460/image/4be8a679014497f0.png?q=20'),
                  OffersView(
                      imgUrl:
                          'https://rukminim2.flixcart.com/flap/490/460/image/6ecb75e51b607880.jpg?q=20'),
                  OffersView(
                      imgUrl:
                          'https://rukminim2.flixcart.com/flap/490/460/image/3e6d75f631ab6055.jpg?q=20'),
                  OffersView(
                      imgUrl:
                          'https://rukminim2.flixcart.com/flap/490/460/image/89d809684711712a.jpg?q=20'),
                  OffersView(
                      imgUrl:
                          'https://rukminim2.flixcart.com/fk-p-flap/490/460/image/4b0a064d53b4ff28.jpg?q=20'),
                ],
              ),
            ),
            Container(
              width: sWidth,
              height: 520,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('bg.jpg'), fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        "Shop Student Essential",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(
                        Icons.arrow_circle_right_rounded,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProductoffersView(
                            imgUrl:
                                'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSipYaH1pC33INc587yJGvckwTHfyhkpuDVay-pw1eUmwAFm0P_jMXYwlJFaSNT3tNhJN6xfsJE2IUkKs9twtcbgGN58kaitC0pmTpuePEdpoGL0B0EmQQ-Tztmu08kfWo1mJ1v-Q&usqp=CAc',
                            title: "iPhone 15 pro",
                            off: "50"),
                        ProductoffersView(
                            imgUrl:
                                'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRFwI5njmtkcSU2_XhhP196bIp-JeksLaeXcJU6xBiv8J8HgQTtwHvkBSwmdkKmw0yQx0LiRVHMtNYyphDtyXBa87NBXP_ZxTOzZKNU2TNvIRdAvMMAS4Ra5g&usqp=CAE',
                            title: "iphone 14",
                            off: "70"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProductoffersView(
                            imgUrl:
                                'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSUDd70KXy9Y8yY_J3lhVZdWLObzCjjIH1xIpvfsmjzsMBKteghqm6iU-3lk9dPH4UswEKa8HJcrEJyqPtKE20Q5xvlccdn3ACPl0SEVqpgzq4Mumb4HQu0Jw&usqp=CAE',
                            title: "iPhone 15",
                            off: "50"),
                        ProductoffersView(
                            imgUrl:
                                'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSQ4YDUQVYOex4TV__NE-k85IPeQrrdk8f186hspbXqs60NL1GH4TcMTiKMJ_hiIU0yN0oE7R35LRRjsX5zoCxPhq1Uo2fnkCNZgLBCfmT-9smmOVbc2hzm&usqp=CAE',
                            title: "iphone 11",
                            off: "10"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              title: const Text(
                "1 item in your cart",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: OutlinedButton(onPressed: (){}, child: const Text("Buy Now"),style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder())),)
            ),
            ProductcontainerView(imgUrl: 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRFwI5njmtkcSU2_XhhP196bIp-JeksLaeXcJU6xBiv8J8HgQTtwHvkBSwmdkKmw0yQx0LiRVHMtNYyphDtyXBa87NBXP_ZxTOzZKNU2TNvIRdAvMMAS4Ra5g&usqp=CAE', title: 'iPhone 15', oldPrice: '100000', newPrice: '25000', off: '75'),
            SizedBox(height: 20,),
            Container(
              width: sWidth,
              height: 520,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('bg.jpg'), fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        "Latest Summer Stlyes",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(
                        Icons.arrow_circle_right_rounded,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProductoffersView(
                            imgUrl:
                                'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSipYaH1pC33INc587yJGvckwTHfyhkpuDVay-pw1eUmwAFm0P_jMXYwlJFaSNT3tNhJN6xfsJE2IUkKs9twtcbgGN58kaitC0pmTpuePEdpoGL0B0EmQQ-Tztmu08kfWo1mJ1v-Q&usqp=CAc',
                            title: "iPhone 15 pro",
                            off: "50"),
                        ProductoffersView(
                            imgUrl:
                                'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRFwI5njmtkcSU2_XhhP196bIp-JeksLaeXcJU6xBiv8J8HgQTtwHvkBSwmdkKmw0yQx0LiRVHMtNYyphDtyXBa87NBXP_ZxTOzZKNU2TNvIRdAvMMAS4Ra5g&usqp=CAE',
                            title: "iphone 14",
                            off: "70"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProductoffersView(
                            imgUrl:
                                'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSUDd70KXy9Y8yY_J3lhVZdWLObzCjjIH1xIpvfsmjzsMBKteghqm6iU-3lk9dPH4UswEKa8HJcrEJyqPtKE20Q5xvlccdn3ACPl0SEVqpgzq4Mumb4HQu0Jw&usqp=CAE',
                            title: "iPhone 15",
                            off: "50"),
                        ProductoffersView(
                            imgUrl:
                                'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSQ4YDUQVYOex4TV__NE-k85IPeQrrdk8f186hspbXqs60NL1GH4TcMTiKMJ_hiIU0yN0oE7R35LRRjsX5zoCxPhq1Uo2fnkCNZgLBCfmT-9smmOVbc2hzm&usqp=CAE',
                            title: "iphone 11",
                            off: "10"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              title: const Text(
                "Budget Bazaar",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              trailing: SizedBox(
                  width: sWidth * .08,
                  child: const Image(
                    image: AssetImage('gift.jpg'),
                    fit: BoxFit.cover,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [BudgetView(price: "99"), BudgetView(price: "199")],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [BudgetView(price: "299"), BudgetView(price: "499")],
            ),
            const SizedBox(height: 10,),
            
          ],
        ),
      ),
      bottomNavigationBar: BnavbarView(
        index: 0,
      ),
    );
  }
}
