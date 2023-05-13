import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../resources/images.dart';

class SearchTextField extends StatelessWidget {

  const SearchTextField({
    required this.controller,
    required this.focusNode,
    required this.onTap,
    required this.onCloseTap,
    super.key,
  });
  
  final TextEditingController controller;
  final FocusNode focusNode;
  final VoidCallback onTap;
  final VoidCallback onCloseTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      style: const TextStyle(color: Colors.black),
      cursorColor: Colors.black,
      decoration: InputDecoration(
          hintText: 'Enter city name',
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset(Images.icSearch,
                height: 16,
                width: 16,
                colorFilter: ColorFilter.mode(
                    focusNode.hasFocus
                        ? Theme.of(context).colorScheme.primary
                        : Colors.grey,
                    BlendMode.srcIn)),
          ),
          suffixIcon: focusNode.hasFocus
              ? IconButton(
                  onPressed: onCloseTap,
                  icon: IconButton(
                      onPressed: onCloseTap, icon: Image.asset(Images.icClose)))
              : null),
    );
  }
}
