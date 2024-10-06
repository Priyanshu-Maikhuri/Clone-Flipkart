import 'dart:core';
import 'package:Flipkart/src/screens/redirect_to.dart';
import 'package:flutter/material.dart';
import 'package:Flipkart/src/providers/home_page_provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class OtherDeals extends StatefulWidget {
  @override
  _OtherDealsState createState() => _OtherDealsState();
}

class _OtherDealsState extends State<OtherDeals> {
  buildItem(BuildContext context, int index, HomePageProvider provider) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RedirectTo()),
        );
      },
      child: SizedBox(
        height: Get.height / 3.5,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: Get.height / 7,
              width: Get.width / 4,
              child:
                  Image.asset(provider.otherDeals['deals'][index]['imageUrl']),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                provider.otherDeals['deals'][index]['name'],
                style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                provider.otherDeals['deals'][index]['discount'],
                style: TextStyle(color: Colors.green),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePageProvider>(context);
    return Container(
      height: Get.height / 1.6,
      child: Stack(
        children: <Widget>[
          Container(
            height: Get.height / 1.7,
            color: Color(0xffF5E4D2),
          ),
          Container(
            height: Get.height / 7,
            width: Get.width,
            alignment: Alignment.topCenter,
            child: Image.asset("assets/banner_two.png"),
          ),
          Positioned(
            top: 15,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  width: Get.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            provider.otherDeals['title'],
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RedirectTo()),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: provider.colors['primary']),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'View All',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                  width: Get.width,
                  height: Get.height / 1.75,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.white,
                    child: GridView.builder(
                      padding: EdgeInsets.all(10),
                      shrinkWrap: true,
                      itemCount: provider.otherDeals['deals'].length,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return buildItem(context, index, provider);
                      },
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
