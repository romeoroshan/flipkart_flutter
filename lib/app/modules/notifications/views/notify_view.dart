import 'package:flutter/material.dart';

import 'package:get/get.dart';

class NotifyView extends GetView {
  final String title;
  final String days;
  final String imgUrl;
  final String desc;
  const NotifyView({Key? key,required this.title, required this.days,required this.desc,required this.imgUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
            Text("$days days ago",style: TextStyle(color: Colors.grey),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*.2,
                  child: Image(image: NetworkImage(imgUrl))),
                SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width*.6,
                  child: Text(desc))
              ],
            )
          ],
        ),
      ),
    );
  }
}
