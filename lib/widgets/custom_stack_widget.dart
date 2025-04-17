import 'package:flutter/material.dart';

class CustomStackWidget extends StatelessWidget {
  const CustomStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset('assets/images/backImage.png', height: 400),
        Image.asset('assets/images/coffe.png'),
        Positioned(
          left: 20,
          child: Text(
            'Coffee',
            style: TextStyle(color: Color(0xffBC866C), fontSize: 40),
          ),
        ),
      ],
    );
  }
}
