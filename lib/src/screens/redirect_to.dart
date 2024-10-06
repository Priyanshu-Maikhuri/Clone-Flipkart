import 'package:Flipkart/src/providers/home_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RedirectTo extends StatelessWidget {
  const RedirectTo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePageProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('The Deal'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: provider.backgroundColor,
      body: const Center(
        child: Text(
          'New Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
