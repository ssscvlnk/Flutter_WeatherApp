import 'package:flutter/material.dart';
import 'package:weather_app/data/weather_data.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/weather_card.dart';
class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  WeatherModel? selectedWeather;
  void showWeather(WeatherModel weather) {
    setState(() {
      selectedWeather = weather;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Погода'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showWeather(weatherList[0]);
              }, 
              child: Text('Лондон')
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showWeather(weatherList[1]);
              }, 
              child: Text('Париж')
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showWeather(weatherList[2]);
              }, 
              child: Text('Токио')
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showWeather(weatherList[3]);
              }, 
              child: Text('Волжский')
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showWeather(weatherList[4]);
              }, 
              child: Text('Санкт-Петербург')
            ),
            SizedBox(height: 20),
            if (selectedWeather != null) 
              WeatherCard(weather: selectedWeather!)
          ],
        ),
      ),
    );
  }
}