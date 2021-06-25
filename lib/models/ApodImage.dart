import 'dart:developer';

class ApodImage {
  final String date;
  final String explanation;
  final String? hdurl;
  final String mediaType;
  final String serviceVersion;
  final String title;
  final String url;
  final String? copyright;

  ApodImage({
    required this.date,
    required this.explanation,
    required this.hdurl,
    required this.mediaType,
    required this.serviceVersion,
    required this.title,
    required this.url,
    required this.copyright
  });

  factory ApodImage.fromJson(Map<String, dynamic> json) {
    return ApodImage(
      date: json['date'],
      explanation: json['explanation'],
      hdurl: json['hdurl'],
      mediaType: json['media_type'],
      serviceVersion: json['service_version'],
      title: json['title'],
      url: json['url'],
      copyright: json['copyright']
    );
  }
}