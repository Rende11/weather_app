import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './widgets/weather_days_list.dart';
import './widgets/weather_today.dart';

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
          leading: IconButton(
            onPressed: null,
            icon: SvgPicture.asset('assets/images/svg/ic_location.svg'),
          ),
          actions: [
            IconButton(
                onPressed: null,
                icon: SvgPicture.asset('assets/images/svg/ic_search.svg')),
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
