import 'package:Flipkart/src/screens/redirect_to.dart';
import 'package:Flipkart/src/providers/home_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BannerAd extends StatelessWidget {
  const BannerAd({super.key});

  buildItem(int index, BuildContext context, HomePageProvider provider) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RedirectTo()),
        );
      },
      child: Container(
        width: provider.bannerAds['bannerAdWidth'],
        height: provider.bannerAds['bannerAdHeight'],
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: provider.colors['secondary']!,
            width: 4,
          ),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Image.network(
          provider.bannerAds['adUrl'][index],
          fit: BoxFit.fill,
          errorBuilder: (context, error, stackTrace) {
            return Center(
              child: Icon(
                Icons.error,
                color: provider.colors['error'],
                size: 50,
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePageProvider>(context);
    return Column(
      children: List.generate(provider.bannerAds['adUrl'].length, (index) {
        return buildItem(index, context, provider);
      }),
    );
  }
}
