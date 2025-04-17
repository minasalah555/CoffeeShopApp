import 'package:coffee_shop_app/widgets/custom_row_widget.dart';
import 'package:coffee_shop_app/widgets/custom_stack_widget.dart';
import 'package:coffee_shop_app/widgets/main_custom_text_widget.dart';
import 'package:flutter/material.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50),
      decoration: BoxDecoration(gradient: linearGradient()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainCustomTextWidget(title: 'Amazing'),
          MainCustomTextWidget(title: 'taste of'),
          CustomStackWidget(),
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: CustomRowWidget(),
          ),
        ],
      ),
    );
  }

  LinearGradient linearGradient() {
    return LinearGradient(
      colors: [
        Color(0xff2C1B14),
        Color.fromARGB(255, 59, 29, 18),
        Color.fromARGB(255, 66, 49, 41),
        Color.fromARGB(255, 77, 69, 65),
        Color(0xff2C1B14),
        Color(0xff2C1B14),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  }
}
