import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'weather_image.dart';
import 'weather_text.dart';
class WeatherCard extends StatelessWidget{
  final WeatherModel weather;
  const WeatherCard({
    super.key,
    required this.weather
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            WeatherImage(image: weather.image),
            SizedBox(height: 10),
            WeatherText(city: weather.city, temperatue: weather.temperatue, description: weather.description)
          ],
        ),
      ),
    );
  }
}