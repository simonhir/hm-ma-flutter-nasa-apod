
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:nasa_apod/models/ApodImage.dart';

List<ApodImage> parseImages(String responseBody) {
  Iterable l = json.decode(responseBody);
  List<ApodImage> finished = l.map((model)=> ApodImage.fromJson(model)).where((element) => element.mediaType == "image").toList();
  return finished;
}

class ApodImageService {

  Future<List<ApodImage>> fetchImages() async {
    final response = await http.get(Uri.parse('https://api.nasa.gov/planetary/apod?api_key=cZS81rXn2r6NoOp5X4jWcYi9SN7RZg1Ghl0mZtG8&count=30&thumbs'));
    return compute(parseImages, response.body);
  }
}