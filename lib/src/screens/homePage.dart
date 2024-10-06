import 'package:Flipkart/src/providers/home_page_provider.dart';
import 'package:Flipkart/src/screens/widgets/BannerAd.dart';
import 'package:Flipkart/src/screens/widgets/Category.dart';
import 'package:Flipkart/src/screens/widgets/Deals.dart';
import 'package:Flipkart/src/screens/widgets/DealsOfTheDay.dart';
import 'package:Flipkart/src/screens/widgets/Drawerfile.dart';
import 'package:Flipkart/src/screens/widgets/FeaturedBrand.dart';
import 'package:Flipkart/src/screens/widgets/Offers.dart';
import 'package:Flipkart/src/screens/widgets/OffersInList.dart';
import 'package:Flipkart/src/screens/widgets/OtherDeals.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePageProvider>(context);
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: provider.colors['primary']),
          backgroundColor: provider.backgroundColor,
          elevation: 0,
          title: Image.asset(
            provider.appBarLogo,
            height: Get.height / 2,
            width: Get.width / 4,
          ),
          actions: <Widget>[
            Icon(
              Icons.notifications,
              size: 20,
              color: provider.colors['primary'],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Icon(
                Icons.person,
                size: 20,
                color: provider.colors['primary'],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.shopping_cart,
                size: 20,
                color: provider.colors['primary'],
              ),
            )
          ],
        ),
        drawer: Drawer(
          child: Drawerfile(),
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                height: Get.height / 11,
                color: provider.colors['primary'],
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: const InkWell(
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(Icons.search),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Search for Products, Brands and More',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Spacer(),
                          Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(Icons.mic_none_sharp))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Category(),
              OffersInList(),
              Offers(),
              BannerAd(),
              DealsOfTheDay(),
              const SizedBox(
                height: 5,
              ),
              FeaturedBrand(),
              Deals(),
              OtherDeals(),
              const SizedBox(
                height: 5,
              )
            ],
          ),
        ));
  }
}
