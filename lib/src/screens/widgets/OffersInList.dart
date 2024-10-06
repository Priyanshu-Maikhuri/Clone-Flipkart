import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:Flipkart/src/providers/home_page_provider.dart';
import 'package:Flipkart/src/screens/redirect_to.dart';
import 'package:provider/provider.dart';

class OffersInList extends StatefulWidget {
  @override
  _OffersInListState createState() => _OffersInListState();
}

class _OffersInListState extends State<OffersInList> {
  // int _currentIndex = 0;
  final CarouselSliderController carouselController =
      CarouselSliderController();

  buildItem(BuildContext context, String imageUrl, HomePageProvider provider) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RedirectTo()),
        );
      },
      child: Container(
        height: provider.offerBanners['offerBannerHeight'],
        padding: const EdgeInsets.only(left: 2, right: 2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            height: provider.offerBanners['offerBannerHeight'],
            width: provider.offerBanners['offerBannerWidth'],
            // placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePageProvider>(context);
    List<String> bannerImages = provider.offerBanners['offerBannerImages'];
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      child: SizedBox(
        height: provider.offerBanners['offerBannerHeight'],
        child: Column(
          children: [
            CarouselSlider(
                items: bannerImages.map((imageUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return buildItem(context, imageUrl, provider);
                    },
                  );
                }).toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  aspectRatio: 2,
                  viewportFraction: 1,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  enlargeCenterPage: true,
                  // onPageChanged: (index, reason) {
                  //   setState(() {
                  //     _currentIndex = index;
                  //   });
                  // },
                )),
          ],
        ),
      ),
    );
  }
}
