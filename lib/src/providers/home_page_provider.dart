import 'package:flutter/material.dart';
import '../models/deals.dart';

class HomePageProvider extends ChangeNotifier {
  Map<String, dynamic> get config => Deals.homePageData;

  String get appBarLogo => config['appBarLogo'];
  Color get backgroundColor => config['backgroundColor'];
  Map<String, dynamic> get categories => Map<String, dynamic>.from(config['categories']);
  Map<String, dynamic> get offerBanners => Map<String, dynamic>.from(config['offerBanners']);
  Map<String, dynamic> get offers => Map<String, dynamic>.from(config['offers']);
  Map<String, dynamic> get bannerAds => Map<String, dynamic>.from(config['bannerAds']);
  Map<String, dynamic> get dealsOfTheDay => Map<String, dynamic>.from(config['dealsOfTheDay']);
  Map<String, dynamic> get featuredBrands => Map<String, dynamic>.from(config['featuredBrands']);
  List<String> get deals => List<String>.from(config['deals']);
  Map<String, dynamic> get otherDeals => Map<String, dynamic>.from(config['otherDeals']);
  Map<String, double> get fontSizes => Map<String, double>.from(config['fontSizes']);
  Map<String, Color> get colors => Map<String, Color>.from(config['colors']);

  // method to update the config when data is fetched from an API
  void updateConfig(Map<String, dynamic> newConfig) {
    notifyListeners();
  }
}
