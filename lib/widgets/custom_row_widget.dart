import 'package:coffee_shop_app/cubits/product_cubit/product_cubit.dart';
import 'package:coffee_shop_app/views/home_view.dart';
import 'package:coffee_shop_app/widgets/custom_Bottom_widget.dart';
import 'package:coffee_shop_app/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomRowWidget extends StatelessWidget {
  const CustomRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButtomWidget(
          color: Color(0xff925C44),
          horizont: 28,
          vertical: 12,
          title: 'Get Started',
          onTap: () {
            Navigator.pushNamed(context, HomeView.id);
            BlocProvider.of<ProductCubit>(context).getAllProducts();
          },
        ),
        CustomTextWidget(
          title: 'Skip >>',
          size: 16,
          onTap: () {
            Navigator.pushNamed(context, HomeView.id);
            BlocProvider.of<ProductCubit>(context).getAllProducts();
          },
          maxLines: 1,
        ),
      ],
    );
  }
}
