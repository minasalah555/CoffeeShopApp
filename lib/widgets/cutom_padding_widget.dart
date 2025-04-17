import 'package:coffee_shop_app/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class PaddingWiget extends StatelessWidget {
  const PaddingWiget({
    super.key,
    required this.title,
    required this.left,
    required this.top,
    required this.size,
    required this.right,
    required this.maxLines,
  });
  final String title;
  final double left;
  final double right;
  final double top;
  final double size;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: left, top: top, right: right),
      child: CustomTextWidget(title: title, size: size, maxLines: maxLines),
    );
  }
}
