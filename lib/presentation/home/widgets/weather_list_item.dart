import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../models/weather_day.dart';

class WeatherListItem extends StatelessWidget {
  final WeatherDay day;

  const WeatherListItem({required this.day, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Text(day.dayName,
                  style: Theme.of(context).textTheme.bodyMedium)),
          Expanded(
            child: SvgPicture.asset(
              day.icon,
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Text('${day.degrees}°',
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
          ),
        ],
      ),
    );
  }
}
