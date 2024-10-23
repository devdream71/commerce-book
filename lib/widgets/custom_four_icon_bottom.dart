import 'package:flutter/material.dart';

class CustomFourIconBottom extends StatelessWidget {
  const CustomFourIconBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          SizedBox(
            height: 27,
            width: 27,
            child: Image.asset("assets/image/telegram-nobg.png"),
          ),
          const SizedBox(width: 5,),
          SizedBox(
            height: 33,
            width: 33,
            child: Image.asset("assets/image/round_whats_app-nobg.png"),
          ),
           const SizedBox(width: 5,),
          SizedBox(
            height: 29,
            width: 29,
            child: Image.asset("assets/image/round_youtube_logo2.png"),
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
