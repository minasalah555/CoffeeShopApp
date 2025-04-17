import 'package:coffee_shop_app/widgets/home_view_list_item.dart';
import 'package:coffee_shop_app/widgets/main_category_widget.dart';
import 'package:flutter/material.dart';

class CustomStackHomeWidget extends StatelessWidget {
  const CustomStackHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/backImage.png', fit: BoxFit.fill),
        MainCategoryWidget(),
        Positioned(
          top: 30,
          child: SizedBox(width: 360, height: 400, child: HomeViewListItem()),
        ),
      ],
    );
  }
}
