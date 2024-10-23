import 'package:flutter/material.dart';

class CustomFourIconTop extends StatelessWidget {
  const CustomFourIconTop({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          SizedBox(
            height: 30,
            width: 30,
            child: Image.asset("assets/image/cloudload.png"),
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: Image.asset("assets/image/shopping.jpg"),
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: Image.asset("assets/image/visacard.png"),
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: Image.asset("assets/image/mastercard.png"),
          ),
        ],
      ),
    );
  }
}
