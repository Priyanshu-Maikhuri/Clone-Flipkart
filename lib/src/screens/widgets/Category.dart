import 'package:flutter/material.dart';
import 'package:Flipkart/src/providers/home_page_provider.dart';
import 'package:Flipkart/src/screens/redirect_to.dart';
import 'package:provider/provider.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  buildItem(BuildContext context, int index) {
    final provider = Provider.of<HomePageProvider>(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RedirectTo()),
        );
      },
      child: SizedBox(
        width: provider.categories['categoryWidth'],
        height: provider.categories['categoryHeight'],
        child: Image.asset(
          provider.categories['category'][index]['image'],
          width: provider.categories['categoryWidth'],
          height: provider.categories['categoryHeight'],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePageProvider>(context);
    return SizedBox(
      height: provider.categories['categoryHeight'],
      child: ListView.builder(
        itemCount: provider.categories['category'].length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return buildItem(context, index);
        },
      ),
    );
  }
}
