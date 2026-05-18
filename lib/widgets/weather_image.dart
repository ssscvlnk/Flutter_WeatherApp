import 'package:flutter/material.dart';
class WeatherImage extends StatelessWidget{
  final String image;
  const WeatherImage({
    super.key,
    required this.image
  });
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 100,
      height: 100,
    );
  }
}