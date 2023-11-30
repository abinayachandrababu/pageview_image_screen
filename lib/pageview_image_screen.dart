import 'package:flutter/material.dart';
import 'package:flutter_pageview_image_screen/app_data_image.dart';
import 'package:flutter_pageview_image_screen/display_image.dart';

class PageViewImageScreen extends StatefulWidget {
  const PageViewImageScreen({super.key});

  @override
  State<PageViewImageScreen> createState() =>
      _PageViewImageScreenState();
}

class _PageViewImageScreenState
    extends State<PageViewImageScreen> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ratan Tata'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    print('------------> Current Index: $index');
                    _selectedIndex = index;
                  });
                },
                itemCount: appData.length,
                itemBuilder: (context, index) {
                  return DisplayImage(appData: appData[index]);
                }),
          ),
        ],
      ),
    );
  }
}








