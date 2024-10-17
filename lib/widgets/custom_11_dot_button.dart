import 'package:f_test/utils/string.dart';
import 'package:f_test/widgets/custom_icon_text.dart';
import 'package:flutter/material.dart';

class Custom11DotButton extends StatelessWidget {
  const Custom11DotButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Column(
          children: [
            CustomIconText(icon: Icons.album, text: AppString.androidApp),
            CustomIconText(icon: Icons.album, text: AppString.inventorybilling),
            CustomIconText(icon: Icons.album, text: AppString.pos),
            CustomIconText(icon: Icons.album, text: AppString.manufacturing),
            CustomIconText(icon: Icons.album, text: AppString.onlineStore),
            CustomIconText(icon: Icons.album, text: AppString.marketPlace),
            CustomIconText(icon: Icons.album, text: AppString.payroll),
            CustomIconText(icon: Icons.album, text: AppString.crm),
            CustomIconText(icon: Icons.album, text: AppString.paymentGateway),
            CustomIconText(icon: Icons.album, text: AppString.multiuserAccess),
            CustomIconText(icon: Icons.album, text: AppString.companyPortfoli),
          ],
        ),
      ),
    );
  }
}
