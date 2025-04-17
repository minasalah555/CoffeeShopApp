import 'package:coffee_shop_app/cubits/product_cubit/product_cubit.dart';
import 'package:coffee_shop_app/simple_product_observed.dart';
import 'package:coffee_shop_app/views/home_view.dart';
import 'package:coffee_shop_app/views/main_view.dart';
import 'package:coffee_shop_app/views/product_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = SimpleProductObserved();
  runApp(CoffeeShopApp());
}

class CoffeeShopApp extends StatelessWidget {
  const CoffeeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(),
      child: MaterialApp(
        routes: {
          MainView.id: (context) => MainView(),
          HomeView.id: (context) => HomeView(),
          ProductView.id: (context) => ProductView(),
        },
        debugShowCheckedModeBanner: false,
        initialRoute: MainView.id,
      ),
    );
  }
}
