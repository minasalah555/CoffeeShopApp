import 'package:coffee_shop_app/widgets/custom_Bottom_widget.dart';
import 'package:flutter/material.dart';

class OptionalRowWidget extends StatefulWidget {
  const OptionalRowWidget({super.key});

  @override
  State<OptionalRowWidget> createState() => _OptionalRowWidgetState();
}

class _OptionalRowWidgetState extends State<OptionalRowWidget> {
  Color color1 = Color(0xff2C1B14);
  Color color2 = Color(0xff4E3422);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButtomWidget(
            onTap: () {
              color1 = Color(0xff2C1B14);
              color2 = Color(0xff4E3422);

              setState(() {});
            },
            color: color1,
            title: 'Extra Ice',
            horizont: 30,
            vertical: 10,
          ),
          CustomButtomWidget(
            onTap: () {
              color1 = Color(0xff4E3422);
              color2 = Color(0xff2C1B14);

              setState(() {});
            },
            color: color2,
            title: 'Extra Sugar',
            horizont: 30,
            vertical: 10,
          ),
        ],
      ),
    );
  }
}
