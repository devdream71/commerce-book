import 'package:flutter/material.dart';

class CustomFourIconBottom extends StatelessWidget {
  const CustomFourIconBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          SizedBox(
            height: 30,
            width: 30,
            child: Image.asset("assets/image/telegram-nobg.png"),
          ),
          SizedBox(
            height: 30,
            width: 30,
            child: Image.asset("assets/image/whatsapp-nobg.png"),
          ),
          SizedBox(
            height: 30,
            width: 30,
            child: Image.asset("assets/image/youtube-nobg.png"),
          ),
          const Spacer(),
          SizedBox(
            height: 50,
            width: 50,
            child: Image.asset("assets/image/customerservice-nobg.png"),
          ),
        ],
      ),
    );
  }
}
