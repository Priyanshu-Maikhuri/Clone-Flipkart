import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Deals {
  static Map<String, dynamic> homePageData = {
    'appBarLogo': 'assets/logo.png',
    'backgroundColor': const Color(0xFFF9F8F8),
    'categories': {
      'categoryHeight': Get.height / 11,
      'categoryWidth': Get.width / 6,
      'category': [
        {
          'name': 'Appliances',
          'image': 'assets/appliances.png',
        },
        {
          'name': 'Beauty',
          'image': 'assets/beauty.png',
        },
        {
          'name': 'Electronics',
          'image': 'assets/electronics.png',
        },
        {
          'name': 'Fashion',
          'image': 'assets/fashion.png',
        },
        {
          'name': 'Grocery',
          'image': 'assets/grocery.png',
        },
        {
          'name': 'Mobiles',
          'image': 'assets/mobiles.png',
        },
        {
          'name': 'Sports & more',
          'image': 'assets/sports_and_more.png',
        },
        {
          'name': 'Toys & Baby',
          'image': 'assets/toys_and_babby.png',
        },
        {
          'name': 'Home',
          'image': 'assets/home.png',
        },
      ]
    },
    'offerBanners': {
      'offerBannerHeight': Get.height / 4,
      'offerBannerWidth': Get.width,
      'offerBannerImages': [
        'https://rukminim2.flixcart.com/fk-p-flap/520/280/image/9d11370cee8e3c6a.jpg?q=20',
        'https://rukminim2.flixcart.com/fk-p-flap/520/280/image/3140ca2fbd2e4d2e.png?q=20',
        'https://rukminim2.flixcart.com/fk-p-flap/520/280/image/c40026679535f4ff.jpg?q=20',
        'https://rukminim2.flixcart.com/fk-p-flap/520/280/image/dc583f0a5e2e7704.jpg?q=20',
        'https://rukminim2.flixcart.com/fk-p-flap/520/280/image/df23a8e09905e0cb.jpg?q=20',
        'https://rukminim2.flixcart.com/fk-p-flap/520/280/image/350f0428fef2f660.jpg?q=20'
      ]
    },
    'offers': {
      'offerHeight': Get.height / 5,
      'offerImages': [
        "assets/telivision.png",
        "assets/running.png",
        "assets/mobile_top.png"
      ]
    },
    'bannerAds': {
      'bannerAdHeight': Get.height / 8,
      'bannerAdWidth': Get.width,
      'adUrl': [
        'https://rukminim2.flixcart.com/fk-p-flap/1600/270/image/281ccd1cc0f657f8.jpeg?q=20'
      ]
    },
    'dealsOfTheDay': {
      'title': 'Deals of the Day',
      'time': '19h 18m Remaining',
      'dealHeight': Get.height/6.5,
      'dealWidth': Get.width/4,
      'deals': [
        {
          'imageUrl': 'assets/female.png',
          'name': 'Dresses & Tops',
          'discount': 'From 99'
        },
        {
          'imageUrl': "assets/watch.png",
          'name': 'Watches',
          'discount': 'Upto 70% Off'
        },
        {
          'imageUrl': "assets/male_modle.png",
          'name': 'T Shirts',
          'discount': 'Starting @99'
        },
        {
          'imageUrl': "assets/shirt_modle.png",
          'name': 'Casual Shirts',
          'discount': 'Extra 100 Off'
        },
      ]
    },
    'featuredBrands': {
      'feturedHeight': Get.height / 3.5,
      'featuredWidth': Get.width,
      'brandImages': ["assets/power_bank.png"]
    },
    'deals': ["assets/hair_dryer.png", "assets/laptop.png"],
    'otherDeals': {
      'title': 'Dual Camera Phones',
      'deals': [
        {
          'imageUrl': "assets/phone.png",
          'name': 'Redmi Note 7 Pro',
          'discount': 'From @44,900'
        },
        {
          'imageUrl': "assets/phone_two.png",
          'name': 'Redmi Note 7s',
          'discount': 'Trending Range'
        },
        {
          'imageUrl': "assets/phone_three.png",
          'name': 'Realme 3',
          'discount': 'Best Choice'
        },
        {
          'imageUrl': "assets/nokia.png",
          'name': 'Samsung A30',
          'discount': 'From @10,999'
        },
      ]
    },
    'fontSizes': {
      'title': 20.0,
      'subtitle': 15.0,
      'body': 13.0,
    },
    'colors': {
      'primary': const Color(0xff2874F0),
      'secondary': Colors.amberAccent,
      'error': const Color(0xFFF44336),
      'text': Colors.black87,
    },
  };
}
