import 'package:flutter/material.dart';

class AdminUser extends StatelessWidget {
  const AdminUser({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //MediaQuery.of(context).size.width * 0.65
      height: MediaQuery.of(context).size.height * 65,
      width: MediaQuery.of(context).size.width * 65,
      child: const Padding(
        padding:
            EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
        child: Column(
          children: [
            Text(
              "data",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
             Text(
              "M C",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.greenAccent),
            )
          ],
        ),
      ),
    );
  }
}
