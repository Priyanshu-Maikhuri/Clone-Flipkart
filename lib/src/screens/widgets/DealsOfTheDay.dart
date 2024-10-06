import 'package:Flipkart/src/screens/redirect_to.dart';
import 'package:flutter/material.dart';
import 'package:Flipkart/src/providers/home_page_provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class DealsOfTheDay extends StatefulWidget {
  @override
  _DealsOfTheDayState createState() => _DealsOfTheDayState();
}

class _DealsOfTheDayState extends State<DealsOfTheDay> {
  buildItem(BuildContext context, int index, HomePageProvider provider) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RedirectTo()),
        );
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 3.5,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: provider.dealsOfTheDay['dealHeight'],
              width: provider.dealsOfTheDay['dealWidth'],
              child: Image.asset(
                  provider.dealsOfTheDay['deals'][index]['imageUrl']),
            ),
            Text(
              provider.dealsOfTheDay['deals']![index]['name'],
              style: TextStyle(fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                provider.dealsOfTheDay['deals'][index]['discount'],
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePageProvider>(context);
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 1.6,
      margin: EdgeInsets.only(top: 4),
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height / 1.7,
            color: Color(0xffFFBAF0),
          ),
          Container(
            height: size.height / 7,
            width: size.width,
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/banner_three.png",
            ),
          ),
          Positioned(
            top: Get.height / 65,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  width: size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            provider.dealsOfTheDay['title'],
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Row(
                            children: <Widget>[
                              const Icon(
                                Icons.access_time,
                                color: Colors.white,
                              ),
                              Text(
                                provider.dealsOfTheDay['time'],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              )
                            ],
                          )
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
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Container(
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
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: size.height / 1.75,
                  padding: EdgeInsets.only(left: 8, right: 8),
                  width: size.width,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.white,
                    child: GridView.builder(
                      padding: EdgeInsets.all(10),
                      itemCount: provider.dealsOfTheDay['deals'].length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
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
