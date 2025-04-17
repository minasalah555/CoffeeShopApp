import 'package:flutter/material.dart';

class ProductStackWidget extends StatelessWidget {
  const ProductStackWidget({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.brown.shade900,
                Colors.brown.shade500,
                Colors.brown.shade300,
                Colors.brown.shade200,
                Colors.brown.shade300,
                Colors.brown.shade500,
                Colors.brown.shade900,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        // Coffee Image
        Positioned(
          top: 25,
          left: 50,
          right: 50,
          child: Image.network(
            image, // Ensure image is in assets
            height: 200,
            alignment: Alignment.center,

            // fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
