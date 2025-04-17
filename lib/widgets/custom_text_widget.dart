import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.title,
    this.onTap,
    required this.size,
    required this.maxLines,
  });
  final String title;
  final Function()? onTap;
  final int maxLines;
  final double size;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        overflow: TextOverflow.ellipsis,
        maxLines: maxLines,
        style: TextStyle(
          color: Colors.white,
          fontSize: size,
          fontFamily: 'Kreon',
        ),
      ),
    );
  }
}
