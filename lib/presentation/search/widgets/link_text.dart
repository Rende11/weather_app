import 'package:flutter/material.dart';

class LinkText extends StatelessWidget {
  const LinkText({required this.text, required this.onTap, super.key});

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap, child: Text(text, 
    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.amber),));
  }
}
