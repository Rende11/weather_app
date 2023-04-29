import 'package:flutter/material.dart';

import './weather_list_item.dart';
import '../../../models/weather_day.dart';

class WeatherDaysList extends StatelessWidget {
  const WeatherDaysList({super.key});

  static List<WeatherDay> daysList = [
    WeatherDay(
        dayName: 'Monday',
        icon: 'assets/images/svg/04d.svg',
        degrees: '10',
        locationName: 'Cupertino',
        weatherDescription: 'weatherDescription'),
     WeatherDay(
        dayName: 'Tuesday',
        icon: 'assets/images/svg/09d.svg',
        degrees: '12',
        locationName: 'Cupertino',
        weatherDescription: 'weatherDescription'),
     WeatherDay(
        dayName: 'Wednesday',
        icon: 'assets/images/svg/10d.svg',
        degrees: '11',
        locationName: 'Cupertino',
        weatherDescription: 'weatherDescription'),
     WeatherDay(
        dayName: 'Thursday',
        icon: 'assets/images/svg/04d.svg',
        degrees: '10',
        locationName: 'Cupertino',
        weatherDescription: 'weatherDescription'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
      child: Column(
        children: daysList
            .map((day) => WeatherListItem(day: day))
            .toList(),
      ),
    );
  }
}
