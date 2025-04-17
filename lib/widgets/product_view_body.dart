import 'package:coffee_shop_app/models/product_model.dart';
import 'package:coffee_shop_app/widgets/custom_Bottom_widget.dart';
import 'package:coffee_shop_app/widgets/custom_size_row.dart';
import 'package:coffee_shop_app/widgets/custom_text_widget.dart';
import 'package:coffee_shop_app/widgets/cutom_padding_widget.dart';
import 'package:coffee_shop_app/widgets/optinoal_row_widget.dart';
import 'package:coffee_shop_app/widgets/product_stack_widget.dart';
import 'package:flutter/material.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        ProductStackWidget(image: product.image),

        Padding(
          padding: const EdgeInsets.only(left: 200, top: 10),
          child: CustomTextWidget(
            title: 'Price \$${product.price}',
            size: 26,
            maxLines: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 210, top: 6),
          child: CustomButtomWidget(
            color: Color(0xff2C1B14),
            title: 'But Now >>',
            horizont: 12,
            vertical: 0,
          ),
        ),
        PaddingWiget(
          title: 'Description',
          top: 6,
          left: 16,
          size: 26,
          right: 0,
          maxLines: 1,
        ),
        PaddingWiget(
          size: 12,
          title: product.description,
          top: 6,
          left: 16,
          right: 10,
          maxLines: 3,
        ),
        PaddingWiget(
          title: 'Size',
          top: 6,
          left: 16,
          size: 26,
          right: 0,
          maxLines: 1,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CutomSizeRowWidget(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
          child: CustomTextWidget(title: 'Optional', size: 24, maxLines: 1),
        ),
        OptionalRowWidget(),
      ],
    );
  }
}
