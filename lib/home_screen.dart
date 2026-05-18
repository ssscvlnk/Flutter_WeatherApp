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
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF7F7FD5), Color(0xFF86A8E7), Color(0xFF91EAE4)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          ),
        ),
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showWeather(weatherList[0]);
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent,
                    foregroundColor: Colors.white
                  ),
                  child: Text('Лондон')
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    showWeather(weatherList[1]);
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent,
                    foregroundColor: Colors.white
                  ),
                  child: Text('Париж')
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    showWeather(weatherList[2]);
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent,
                    foregroundColor: Colors.white
                  ),
                  child: Text('Токио')
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    showWeather(weatherList[3]);
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent,
                    foregroundColor: Colors.white
                  ),
                  child: Text('Волжский')
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    showWeather(weatherList[4]);
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent,
                    foregroundColor: Colors.white
                  ),
                  child: Text('Санкт-Петербург')
                ),
              ],
            ),
            SizedBox(height: 40),
            if (selectedWeather != null) 
              WeatherCard(weather: selectedWeather!)
          ],
        ),
      ),
      ),
    );
  }
}