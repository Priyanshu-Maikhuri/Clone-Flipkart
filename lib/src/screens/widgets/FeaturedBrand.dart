import 'package:Flipkart/src/providers/home_page_provider.dart';
import 'package:Flipkart/src/screens/redirect_to.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class FeaturedBrand extends StatefulWidget {
  @override
  _FeaturedBrandState createState() => _FeaturedBrandState();
}

class _FeaturedBrandState extends State<FeaturedBrand> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePageProvider>(context);
    return SizedBox(
      height: Get.height / 2.45,
      width: provider.featuredBrands['featuredWidth'],
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 8, top: 8),
              child: Text(
                'Featured Brand',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 8),
              child: Text('Sponsored', style: TextStyle(color: Colors.grey)),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RedirectTo()),
                );
              },
              child: Image.asset(
                provider.featuredBrands['brandImages'][0],
                height: provider.featuredBrands['featuredHeight'],
                width: provider.featuredBrands['featuredWidth'],
              ),
            )
          ],
        ),
      ),
    );
  }
}
