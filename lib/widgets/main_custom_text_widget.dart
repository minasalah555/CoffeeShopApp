import 'package:flutter/material.dart';

class MainCustomTextWidget extends StatelessWidget {
  const MainCustomTextWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        title,
        style: TextStyle(
          color: Color(0xffBC866C),
          fontSize: 40,
          fontWeight: FontWeight.w400,
          fontFamily: 'Kreon',
        ),
      ),
    );
  }
}
