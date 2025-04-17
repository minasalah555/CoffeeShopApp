import 'package:coffee_shop_app/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CutomAppBar extends StatelessWidget {
  const CutomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(Icons.menu, color: Colors.white, size: 40),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: CustomTextWidget(
              title: 'Hello, LearnCodewithrk ',
              size: 20,
              maxLines: 1,
            ),
          ),
          SizedBox(width: 50),
          Icon(Icons.search, color: Colors.white, size: 40, weight: 100),
        ],
      ),
    );
  }
}
