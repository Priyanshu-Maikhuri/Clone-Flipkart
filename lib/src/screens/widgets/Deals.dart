import 'package:Flipkart/src/screens/redirect_to.dart';
import 'package:Flipkart/src/providers/home_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class Deals extends StatefulWidget {
  @override
  _DealsState createState() => _DealsState();
}

class _DealsState extends State<Deals> {
  Widget buildItem(String image) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RedirectTo()),
          );
        },
        child: Image.asset(
          image,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final dealImages = Provider.of<HomePageProvider>(context).deals;
    return SizedBox(
      height: Get.height / 2.5,
      child: Card(
        child: Row(
          children:
              dealImages.map((dealImage) => buildItem(dealImage)).toList(),
        ),
      ),
    );
  }
}
