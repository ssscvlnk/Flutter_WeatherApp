import 'package:flutter/material.dart';
class WeatherText extends StatelessWidget{
  final String city;
  final int temperatue;
  final String description;
  const WeatherText({
    super.key,
    required this.city,
    required this.temperatue,
    required this.description
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          city,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          )
        ),
        Text(
          '$temperatue℃',
          style: TextStyle(fontSize: 30)
        ),
        Text(
          description,
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}