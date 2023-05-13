import 'package:flutter/material.dart';

class PastSearchItemWidget extends StatelessWidget {
  const PastSearchItemWidget(
      {required this.city, required this.onTap, super.key});

  final String city;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(city),
      IconButton(onPressed: () {
        print("DELETE");
      }, icon: Icon(Icons.close))
    ],);
  }
}
