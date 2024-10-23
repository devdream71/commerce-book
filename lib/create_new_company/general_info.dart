import 'package:f_test/utils/color.dart';
import 'package:f_test/utils/string.dart';
import 'package:f_test/widgets/bottom_four_text.dart';
import 'package:f_test/widgets/custom_button.dart';
import 'package:f_test/widgets/custom_text_edit_form.dart';
import 'package:f_test/widgets/label_with_asterisk.dart';
import 'package:flutter/material.dart';

class GeneralInfo extends StatefulWidget {
  const GeneralInfo({super.key});

  @override
  State<GeneralInfo> createState() => _GeneralInfoState();
}

class _GeneralInfoState extends State<GeneralInfo> {

  TextEditingController proprietorNameController = TextEditingController();
  TextEditingController countryInfoController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: AppColor.appBGColor,
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Align(
                alignment: Alignment.center,
                child: const Text("Company Information", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)),
              const SizedBox(height: 20,),

              const LabelWithAsterisk(labelText: AppString.proprietorName,),
                CustomTextFormField(hintText: AppString.proprietorName,
              controller: proprietorNameController,
              ),
              const SizedBox(height: 8,),
              const LabelWithAsterisk(labelText: AppString.countryInfo),
                CustomTextFormField(hintText: AppString.countryInfo, showDropdownIcon: true,
              controller: countryInfoController,
              ),
              const SizedBox(height: 8,),
              const LabelWithAsterisk(labelText: AppString.mobile),
              CustomTextFormField(hintText: AppString.mobile, controller: mobileController,),
              const SizedBox(height: 8,),
              const LabelWithAsterisk(labelText: AppString.email),
              CustomTextFormField(hintText: AppString.email, controller: emailController,),
              const SizedBox(height: 8,),
              const LabelWithAsterisk(labelText: AppString.address),
              CustomTextFormField(hintText: AppString.address, maxLines: 2, controller: addressController,),

              const SizedBox(height: 30,),




             //using custom bottom text.
              const BottomFourText(),

              const SizedBox(height: 100,),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(onPressed: (){}, text: "Update", color: Colors.blue.withOpacity(0.2),),
                  const SizedBox(width: 10,),
                  CustomButton(onPressed: (){}, text: "Save", color: Colors.blue,),


                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}