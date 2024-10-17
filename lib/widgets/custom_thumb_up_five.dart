import 'package:f_test/utils/string.dart';
import 'package:f_test/widgets/custom_icon_text.dart';
import 'package:flutter/material.dart';

class CustomThumbUpFive extends StatelessWidget {
  const CustomThumbUpFive({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          CustomIconText(
            icon: Icons.thumb_up,
            text: AppString.cloudBaseSoftware,
          ),
          CustomIconText(
            icon: Icons.thumb_up,
            text: AppString.webApp,
          ),
          CustomIconText(icon: Icons.thumb_up, text: AppString.desktopApp),
          CustomIconText(icon: Icons.thumb_up, text: AppString.ios),
          CustomIconText(icon: Icons.thumb_up, text: AppString.androidApp),
        ],
      ),
    );
  }
}
