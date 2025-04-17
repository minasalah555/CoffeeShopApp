import 'package:coffee_shop_app/models/product_model.dart';
import 'package:coffee_shop_app/views/product_view.dart';
import 'package:coffee_shop_app/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class HomeViewItem extends StatelessWidget {
  const HomeViewItem({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductView.id, arguments: product);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff39261D),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Image.network(product.image, width: 100, height: 100),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CustomTextWidget(
                title: product.title,
                size: 22,
                maxLines: 1,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: CustomTextWidget(
                    title: '\$${product.price}',
                    size: 12,
                    maxLines: 1,
                  ),
                ),
                // SizedBox(width: 30),
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: CustomTextWidget(
                    title: 'Order Now >>',
                    size: 14,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
