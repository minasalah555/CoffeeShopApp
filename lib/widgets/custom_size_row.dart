import 'package:coffee_shop_app/widgets/custom_Bottom_widget.dart';
import 'package:flutter/material.dart';

class CutomSizeRowWidget extends StatefulWidget {
  const CutomSizeRowWidget({super.key});

  @override
  State<CutomSizeRowWidget> createState() => _CutomSizeRowWidgetState();
}

class _CutomSizeRowWidgetState extends State<CutomSizeRowWidget> {
  Color color1 = Color(0xff2C1B14);
  Color color2 = Color(0xff4E3422);
  Color color3 = Color(0xff4E3422);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButtomWidget(
          onTap: () {
            color1 = Color(0xff2C1B14);
            color2 = Color(0xff4E3422);
            color3 = Color(0xff4E3422);
            setState(() {});
          },
          color: color1,
          title: 'L',
          horizont: 30,
          vertical: 10,
        ),
        CustomButtomWidget(
          onTap: () {
            color1 = Color(0xff4E3422);

            color3 = Color(0xff4E3422);
            color2 = Color(0xff2C1B14);
            setState(() {});
          },
          color: color2,
          title: 'XL',
          horizont: 30,
          vertical: 10,
        ),
        CustomButtomWidget(
          onTap: () {
            color1 = Color(0xff4E3422);

            color2 = Color(0xff4E3422);
            color3 = Color(0xff2C1B14);
            setState(() {});
          },
          color: color3,
          title: 'XXL',
          horizont: 30,
          vertical: 10,
        ),
      ],
    );
  }
}
