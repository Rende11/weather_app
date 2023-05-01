import 'package:flutter/material.dart';
import 'package:weather_app/presentation/home/widgets/current_location.dart';


class WeatherToday extends StatelessWidget {
  const WeatherToday({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRect(
            child: Align(
                alignment: Alignment.centerRight,
                heightFactor: 1,
                widthFactor: 0.5,
                child: Image.asset(
                  'assets/images/png/01d.png',
                  width: 350,
                  height: 350,
                ))),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CurrentLocationWidget(),
              Text('12°', style: Theme.of(context).textTheme.displayLarge),
              Text('Sunny and bright',
                  style: Theme.of(context).textTheme.labelLarge)
            ],
          ),
        )
      ],
    ));
  }
}
