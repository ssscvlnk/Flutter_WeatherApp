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
      color: Colors.white,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            WeatherImage(image: weather.image),
            SizedBox(height: 20),
            WeatherText(city: weather.city, temperatue: weather.temperatue, description: weather.description)
          ],
        ),
      ),
    );
  }
}