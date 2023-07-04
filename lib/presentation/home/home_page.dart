import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './widgets/weather_days_list.dart';
import './widgets/weather_today.dart';
import '../../resources/images.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: IconButton(
              onPressed: () {
                print("Location");
              },
              icon: SvgPicture.asset(Images.icLocation),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: IconButton(
                  onPressed: () {
                    print("Search");
                  },
                  icon: SvgPicture.asset(Images.icSearch)),
            ),
          ]),
      body: Column(
        children: const [
          WeatherToday(),
          WeatherDaysList(),
        ],
      ),
    );
  }
}
