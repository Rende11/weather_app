import 'package:flutter/material.dart';
import 'package:weather_app/presentation/search/widgets/link_text.dart';
import 'package:weather_app/presentation/search/widgets/past_search_item.dart';

class PastSearchBlock extends StatefulWidget {
  const PastSearchBlock({
    required this.pastSearchCities,
    required this.onClearAllTap,
    super.key,
  });

  final List<String> pastSearchCities;
  final VoidCallback onClearAllTap;

  @override
  State<PastSearchBlock> createState() => _PastSearchBlockState();
}

class _PastSearchBlockState extends State<PastSearchBlock> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Past Search',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.apply(fontWeightDelta: 2),
            ),
            LinkText(
              text: 'Clear All',
              onTap: widget.onClearAllTap,
            ),
          ],
        ),
        for (var city in widget.pastSearchCities)
          PastSearchItemWidget(
            city: city,
            onTap: () {
              print('PAST');
            },
          )
      ],
    );
  }
}
