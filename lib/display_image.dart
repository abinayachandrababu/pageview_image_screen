import 'package:flutter/material.dart';
import 'package:flutter_pageview_image_screen/app_data_image.dart';

class DisplayImage extends StatelessWidget{
  final AppDataText appData;

  const DisplayImage({super.key, required this.appData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
            image: AssetImage(appData.imagePath), fit: BoxFit.cover),
      ),
    );
  }
}
