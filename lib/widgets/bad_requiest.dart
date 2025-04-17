import 'package:coffee_shop_app/views/main_view.dart';
import 'package:flutter/material.dart';

class BadRequest extends StatelessWidget {
  const BadRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              print('There is error Try Get Start Again');
              // showSnackMessage(context, 'There is error Try Get Start Again');
              Navigator.pushNamed(context, MainView.id);
            },
            child: Container(
              height: 80,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Back",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
