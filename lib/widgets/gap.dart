import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  final double? height;
  final double? width;
  const Gap({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: height,
      width: width,
    );
  }
}



class VerticalGap extends StatelessWidget {
  final double ? height;
  final double ? weight;
  const VerticalGap({super.key, this.height, this.weight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: weight,
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class WindowsGapSize extends StatelessWidget {
  const WindowsGapSize ({ super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
    
  }
} 




class TextIconButton extends StatelessWidget {
  final double ? height;
  final double ? weight;
  const TextIconButton({super.key, this.height, this.weight});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: weight,
      decoration: BoxDecoration(
         //shape: BoxShape.circle(),
      ),
      
    );
  }
}



