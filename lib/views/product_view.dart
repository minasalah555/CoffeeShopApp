import 'package:coffee_shop_app/models/product_model.dart';
import 'package:coffee_shop_app/widgets/product_view_body.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop_app/widgets/custom_text_widget.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});
  static String id = 'ProductView';

  @override
  Widget build(BuildContext context) {
    final ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      backgroundColor: Color(0xff36251E),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff3E2718),
        title: CustomTextWidget(
          title: '<< Back ',
          size: 20,
          onTap: () {
            Navigator.pop(context);
          },
          maxLines: 1,
        ),
      ),
      body: ProductViewBody(product: product),
    );
  }
}
