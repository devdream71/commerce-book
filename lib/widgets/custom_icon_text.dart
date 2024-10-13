import 'package:flutter/material.dart';

class CustomIconText extends StatelessWidget {
 IconData icon;
 String text;
 
   
    CustomIconText({super.key,

  required this.icon,
  required this.text
  
  
  });



  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
          Icon(icon, color: Colors.blue,),
        const SizedBox(width: 5,),
        Text(text, style: const TextStyle(color: Colors.blue),)
      ],

    );
  }
}