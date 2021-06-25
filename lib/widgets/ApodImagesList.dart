
import 'package:flutter/widgets.dart';
import 'package:nasa_apod/models/ApodImage.dart';

import 'ApodImageWidget.dart';

class ApodImagesList extends StatelessWidget {
  final List<ApodImage> images;

  ApodImagesList({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 9/10
        ),
        itemCount: images.length,
        padding: EdgeInsets.all(5),
        itemBuilder: (context, index) {
          return ApodImageWidget(image: images[index]);
        }
    );
  }
}