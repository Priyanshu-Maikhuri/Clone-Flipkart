import 'package:Flipkart/src/providers/home_page_provider.dart';
import 'package:Flipkart/src/screens/redirect_to.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  Widget buildItem(String image) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RedirectTo()),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePageProvider>(context);
    final offerImages = provider.offers['offerImages'] as List<String>;
    return Container(
      height: provider.offers['offerHeight'],
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black,
            width: 0.5,
          ),
        ),
      ),
      child: offerImages.length <= 3
          ? Row(
              children: offerImages.map((image) => buildItem(image)).toList(),
            )
          : ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: offerImages.length,
              itemBuilder: (context, index) => buildItem(offerImages[index]),
            ),
    );
  }
}
