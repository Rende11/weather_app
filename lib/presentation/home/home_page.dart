import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './widgets/weather_days_list.dart';
import './widgets/weather_today.dart';
import '../../navigation/app_router.dart';
import '../../resources/images.dart';
import '../search/search_page.dart';

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
            icon: SvgPicture.asset(Images.icLocation),
          ),
          actions: [
            IconButton(
                onPressed: () =>
                    appRouter.goTo(context: context, route: const SearchPage()),
                icon: SvgPicture.asset(Images.icSearch)),
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
