import 'package:flutter/material.dart';

class CustomFourIconTop extends StatelessWidget {
  const CustomFourIconTop({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: Image.asset("assets/image/cloudload.png"),
          ),
          SizedBox(
            height: 50,
            width: 50,
            child: Image.asset("assets/image/shopping.jpg"),
          ),
          SizedBox(
            height: 50,
            width: 50,
            child: Image.asset("assets/image/visacard.png"),
          ),
          SizedBox(
            height: 50,
            width: 50,
            child: Image.asset("assets/image/mastercard.png"),
          ),
        ],
      ),
    );
  }
}
