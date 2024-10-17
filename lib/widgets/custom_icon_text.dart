import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomIconText extends StatelessWidget {
  IconData icon;
  String text;

  CustomIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 13,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: GoogleFonts.lato(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 13,
            //fontWeight: FontWeight.w700,
            //fontStyle: FontStyle.italic,
            color: Colors.blue
          ), //TextStyle(color: Colors.blue, fontSize: 13,)
        )
      ],
    );
  }
}
