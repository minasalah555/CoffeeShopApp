import 'package:coffee_shop_app/widgets/main_view_body.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});
  static String id = 'MainView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MainViewBody());
  }
}
