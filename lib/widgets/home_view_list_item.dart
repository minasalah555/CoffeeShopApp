import 'package:coffee_shop_app/cubits/product_cubit/product_cubit.dart';
import 'package:coffee_shop_app/models/product_model.dart';
import 'package:coffee_shop_app/widgets/custom_item_home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewListItem extends StatelessWidget {
  const HomeViewListItem({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> products =
        BlocProvider.of<ProductCubit>(context).products;
    return GridView.builder(
      clipBehavior: Clip.none,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        childAspectRatio: 1.2,
      ),
      scrollDirection: Axis.horizontal,
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: HomeViewItem(product: products[index]),
        );
      },
    );
  }
}
