import 'package:coffee_shop_app/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomContainerWidget extends StatelessWidget {
  const CustomContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff805325).withValues(),
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage('assets/images/backImage.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(title: 'Best Beans', size: 26, maxLines: 1),
                SizedBox(height: 10),
                CustomTextWidget(
                  title: 'The Quality of our Coffee ',
                  size: 14,
                  maxLines: 1,
                ),
                CustomTextWidget(
                  title: 'Beans is always Maintained ',
                  size: 14,
                  maxLines: 1,
                ),
                CustomTextWidget(
                  title: 'So that Our Coffee Lover Still ',
                  size: 14,
                  maxLines: 1,
                ),
                CustomTextWidget(
                  title: 'Get the Best Coffee Taste. ',
                  size: 14,
                  maxLines: 1,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Image.asset('assets/images/coffe.png', width: 145, height: 180),
            ],
          ),
        ],
      ),
    );
  }
}
