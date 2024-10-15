import 'package:f_test/utils/string.dart';
import 'package:flutter/material.dart';

class BottomFourText extends StatelessWidget {
  const BottomFourText({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ${AppString.thisISClouldBaseSoftware}"),
          Text("• ${AppString.companyNameIsOnlyMAndatory}"),
          Text("• ${AppString.andAdminpasswordisMandatory}"),
          Text("• ${AppString.enjoyBusinessUseCommerceBookSofware}"),
        ],
      ),
    );
  }
}
