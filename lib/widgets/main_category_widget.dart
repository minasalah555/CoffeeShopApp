import 'package:coffee_shop_app/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class MainCategoryWidget extends StatelessWidget {
  const MainCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTextWidget(title: 'Coffee', size: 20, maxLines: 1),
          CustomTextWidget(title: 'Tea', size: 20, maxLines: 1),
          CustomTextWidget(title: 'Juice', size: 20, maxLines: 1),
          CustomTextWidget(title: 'Cake', size: 20, maxLines: 1),
        ],
      ),
    );
  }
}
