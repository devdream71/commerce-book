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
                child: Text("Company Information", style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),)),
              const SizedBox(height: 10,),

              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/image/cBook_logo_nobg.png"),
                ),
              ),

              const SizedBox(height: 10,),

              const LabelWithAsterisk(labelText: AppString.proprietorName, isRequired: true,),
                CustomTextFormField(hintText: "Jasim Islam",
              controller: proprietorNameController,
              ),
              const SizedBox(height: 8,),
              const LabelWithAsterisk(labelText: AppString.countryInfo, isRequired: true,),
                CustomTextFormField(hintText: "Bangladesh", showDropdownIcon: true,
              controller: countryInfoController,
              ),
              const SizedBox(height: 8,),
              const LabelWithAsterisk(labelText: AppString.mobile, isRequired: true,),
              CustomTextFormField(hintText: "+880 1759 546853", controller: mobileController,),
              const SizedBox(height: 8,),
              const LabelWithAsterisk(labelText: AppString.email, isRequired: true,),
              CustomTextFormField(hintText: "jasim@gmail.com", controller: emailController,),
              const SizedBox(height: 8,),
              const LabelWithAsterisk(labelText: AppString.address, isRequired: true,),
              CustomTextFormField(hintText: "#H 24, #R 14, Dhanmondi, Dhaka Bangladesh", maxLines: 1, controller: addressController,),

              const SizedBox(height: 25,),

             //using custom bottom text.
              const BottomFourText(),

              const SizedBox(height: 25,),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                      width: 100,
                      child: CustomButton(onPressed: (){}, text: "Update", color: Colors.blue.withOpacity(0.2),)),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 100,
                      child: CustomButton(onPressed: (){}, text: "Save", color: Colors.blue,)),

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}