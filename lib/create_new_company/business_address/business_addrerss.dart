import 'package:f_test/utils/string.dart';
import 'package:f_test/widgets/bottom_four_text.dart';
import 'package:f_test/widgets/custom_button.dart';
import 'package:f_test/widgets/custom_text_edit_form.dart';
import 'package:f_test/widgets/label_with_asterisk.dart';
import 'package:flutter/material.dart';

class BusinessAddrerss extends StatefulWidget {
  const BusinessAddrerss({super.key});

  @override
  State<BusinessAddrerss> createState() => _BusinessAddrerssState();
}

class _BusinessAddrerssState extends State<BusinessAddrerss> {
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Company Information",
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              
              const LabelWithAsterisk(labelText: AppString.countryInfo),
              const CustomTextFormField(hintText: AppString.countryInfo),
              const SizedBox(height: 8),
              
              const LabelWithAsterisk(labelText: AppString.zipCode),
              const CustomTextFormField(hintText: AppString.zipCode),
              const SizedBox(height: 8),
              
              const LabelWithAsterisk(labelText: AppString.businessAddress),
              const CustomTextFormField(hintText: AppString.businessAddress),
              const SizedBox(height: 8),
              
               

              const SizedBox(height: 30),

              // const Text("• ${AppString.thisISClouldBaseSoftware}"),
              // const Text("• ${AppString.companyNameIsOnlyMAndatory}"),
              // const Text("• ${AppString.andAdminpasswordisMandatory}"),
              // const Text("• ${AppString.enjoyBusinessUseCommerceBookSofware}"),

              const BottomFourText(),

              const SizedBox(height: 100),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(onPressed: () {}, text: "Update", color: Colors.blue.withOpacity(0.2)),
                  const SizedBox(width: 10),
                  CustomButton(onPressed: () {}, text: "Save", color: Colors.blue),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}










 


