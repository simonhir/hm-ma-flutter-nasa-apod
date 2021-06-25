import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nasa_apod/models/ApodImage.dart';

class ApodImageWidget extends StatelessWidget {
  final ApodImage image;

  ApodImageWidget({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: Column(
        children: [
          Image.network(
            image.url,
            height: 130,
            fit: BoxFit.cover,
          ),
          Text(
            image.title,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          Text(
            image.date,
            style: TextStyle(color: Colors.white, fontSize: 11),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}