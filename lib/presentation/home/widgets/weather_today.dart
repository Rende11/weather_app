import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../resources/images.dart';

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
                    Images.ic01d,
                    width: 350,
                    height: 350,
                  ))),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  SvgPicture.asset('assets/images/svg/ic_geo_mark.svg',
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.6), BlendMode.srcIn)),
                  Text('Cupertino',
                      style: Theme.of(context).textTheme.labelMedium),
                ]),
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
