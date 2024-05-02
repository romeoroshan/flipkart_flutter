import 'package:flip_ui/app/modules/account/views/cashback_view.dart';
import 'package:flip_ui/app/modules/account/views/options_view.dart';
import 'package:flip_ui/app/modules/home/views/bnavbar_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/account_controller.dart';

class AccountView extends GetView<AccountController> {
  const AccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double sWidth = screenSize.width;
    return Scaffold(
      bottomNavigationBar: BnavbarView(index: 3),
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "91+ 7012------74",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const Icon(
                  Icons.outbox,
                  color: Color.fromARGB(255, 246, 223, 23),
                  size: 16,
                ),
                Text(
                  "Plus",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                      color: Theme.of(context).primaryColor),
                ),
                const Text(
                  " member >",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ],
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 246, 223, 23),
                      ),
                      Text("0")
                    ],
                  ),
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OptionsView(
                  title1: "Orders",
                  icon1: Icons.payment,
                ),
                OptionsView(
                  title1: "Wishlist",
                  icon1: Icons.add_a_photo,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OptionsView(
                  title1: "Coupons",
                  icon1: Icons.abc,
                ),
                OptionsView(
                  title1: "Help Center",
                  icon1: Icons.ac_unit,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 5,
              color: const Color.fromARGB(255, 228, 228, 228),
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.contact_mail,
                    size: 45,
                    color: Colors.orange,
                  ),
                  title: Text(
                    "Add/Verify your email",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: sWidth * 0.04),
                  ),
                  subtitle: const Text("Get the latest update of your order"),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 13, 1, 147)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    child: const Text("Update"),
                  ),
                )),
            Container(
              height: 5,
              color: const Color.fromARGB(255, 228, 228, 228),
            ),
            const Padding(
              padding: EdgeInsets.all(14.0),
              child: Row(
                children: [
                  Text(
                    "Credit Options",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.mobile_friendly,
                color: Theme.of(context).primaryColor,
                size: 28,
              ),
              title: const Text("Personal Loan"),
              subtitle: const Text(
                "Instant loan upto 5 lakh",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: const Text(
                ">",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.credit_card,
                color: Theme.of(context).primaryColor,
                size: 28,
              ),
              title: const Text("Flipkart Axis Bank Credit Card"),
              subtitle: const Text(
                "Apply & enter the world of unlimited benefits!",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: const Text(
                ">",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
                color: Theme.of(context).primaryColor,
                size: 28,
              ),
              title: const Text("Flipkart Pay Later"),
              subtitle: const Text(
                "Get 20000 worth Times Prime benefits!",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: const Text(
                ">",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            Container(
              height: 5,
              color: const Color.fromARGB(255, 228, 228, 228),
            ),
            const Padding(
              padding: EdgeInsets.all(14.0),
              child: Row(
                children: [
                  Text(
                    "Credit Score",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.file_copy,
                color: Theme.of(context).primaryColor,
                size: 28,
              ),
              title: const Text("Check my credit score"),
              subtitle: const Text(
                "Free score check. Personalized loan offers",
                style: TextStyle(color: Colors.grey),
              ),
              trailing: const Text(
                ">",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            Container(
              height: 5,
              color: const Color.fromARGB(255, 228, 228, 228),
            ),
            const Padding(
              padding: EdgeInsets.all(14.0),
              child: Row(
                children: [
                  Text(
                    "Featured Offerings",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CashbackView(
                    url:
                        "https://png.pngtree.com/png-vector/20220621/ourmid/pngtree-logo-concept-cashback-blue-banner-with-cashback-offer-on-white-backdrop-vector-png-image_47196810.jpg",
                    title: "Monthly Credit",
                    desc: "Start Now",
                  ),
                  CashbackView(
                    url:
                        "https://png.pngtree.com/png-clipart/20210818/ourmid/pngtree-e-commerce-promotional-cashback-activities-neon-lights-png-image_3812888.jpg",
                    title: "Monthly Credit",
                    desc: "Start Now",
                  ),
                  CashbackView(
                    url:
                        "https://png.pngtree.com/png-clipart/20230921/original/pngtree-logo-concept-cashbackblue-banner-on-a-white-background-vector-png-image_12721101.png",
                    title: "Monthly Credit",
                    desc: "Start Now",
                  ),
                ],
              ),
            ),
            Container(
              height: 5,
              color: const Color.fromARGB(255, 228, 228, 228),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 15, bottom: 15),
              child: Row(
                children: [
                  Text(
                    "Account Settings",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.hdr_plus,
                color: Theme.of(context).primaryColor,
              ),
              title: const Text("Flipkart Plus"),
              trailing: const Icon(Icons.arrow_right),
            ),
            ListTile(
              leading: Icon(
                Icons.person_outline,
                color: Theme.of(context).primaryColor,
              ),
              title: const Text("Edit Profile"),
              trailing: const Icon(Icons.arrow_right),
            ),
            ListTile(
              leading: Icon(
                Icons.credit_card,
                color: Theme.of(context).primaryColor,
              ),
              title: const Text("Saved Credit Card"),
              trailing: const Icon(Icons.arrow_right),
            ),
            ListTile(
              leading: Icon(
                Icons.location_city,
                color: Theme.of(context).primaryColor,
              ),
              title: const Text("Saved Addresses"),
              trailing: const Icon(Icons.arrow_right),
            ),
            ListTile(
              leading: Icon(
                Icons.language,
                color: Theme.of(context).primaryColor,
              ),
              title: const Text("Select Language"),
              trailing: const Icon(Icons.arrow_right),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: Theme.of(context).primaryColor,
              ),
              title: const Text("Notification Settings"),
              trailing: const Icon(Icons.arrow_right),
            ),
            Container(
              height: 5,
              color: const Color.fromARGB(255, 228, 228, 228),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 15, bottom: 15),
              child: Row(
                children: [
                  Text(
                    "My Activity",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.reviews,
                color: Theme.of(context).primaryColor,
              ),
              title: const Text("Reviews"),
              trailing: const Icon(Icons.arrow_right),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Theme.of(context).primaryColor,
              ),
              title: const Text("Questions & Answers"),
              trailing: const Icon(Icons.arrow_right),
            ),
            Container(
              height: 5,
              color: const Color.fromARGB(255, 228, 228, 228),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 15, bottom: 15),
              child: Row(
                children: [
                  Text(
                    "Earn with Flipkart",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.star_outline,
                color: Theme.of(context).primaryColor,
              ),
              title: const Text("Flipkart Creator Studio"),
              trailing: const Icon(Icons.arrow_right),
            ),
            ListTile(
              leading: Icon(
                Icons.person_outline,
                color: Theme.of(context).primaryColor,
              ),
              title: const Text("Sell on Flipkart"),
              trailing: const Icon(Icons.arrow_right),
            ),
            Container(
              height: 5,
              color: const Color.fromARGB(255, 228, 228, 228),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 15, bottom: 15),
              child: Row(
                children: [
                  Text(
                    "Feedback & Information",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.edit_document,
                color: Theme.of(context).primaryColor,
              ),
              title: const Text("Terms, Policies and Licenses"),
              trailing: const Icon(Icons.arrow_right),
            ),
            ListTile(
              leading: Icon(
                Icons.question_mark,
                color: Theme.of(context).primaryColor,
              ),
              title: const Text("Questions & Answers"),
              trailing: const Icon(Icons.arrow_right),
            ),
          ],
        ),
      ),
    );
  }
}
