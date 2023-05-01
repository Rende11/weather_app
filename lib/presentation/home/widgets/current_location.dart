import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../resources/images.dart';

class CurrentLocationWidget extends StatelessWidget {
  const CurrentLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      SvgPicture.asset(Images.icGeoMark,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.srcIn)),
      const SizedBox(width: 6),
      Text('Cupertino', style: Theme.of(context).textTheme.labelMedium),
    ]);
  }
}
