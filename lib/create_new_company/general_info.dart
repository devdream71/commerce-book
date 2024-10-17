import 'package:f_test/utils/color.dart';
import 'package:f_test/utils/string.dart';
import 'package:f_test/widgets/bottom_four_text.dart';
import 'package:f_test/widgets/custom_button.dart';
import 'package:f_test/widgets/custom_text_edit_form.dart';
import 'package:f_test/widgets/label_with_asterisk.dart';
import 'package:flutter/material.dart';

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({super.key});

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
              const CustomTextFormField(hintText: AppString.proprietorName,),
              const SizedBox(height: 8,),
              const LabelWithAsterisk(labelText: AppString.countryInfo),
              const CustomTextFormField(hintText: AppString.countryInfo, showDropdownIcon: true,),
              const SizedBox(height: 8,),
              const LabelWithAsterisk(labelText: AppString.mobile),
              const CustomTextFormField(hintText: AppString.mobile),
              const SizedBox(height: 8,),
              const LabelWithAsterisk(labelText: AppString.email),
              const CustomTextFormField(hintText: AppString.email),
              const SizedBox(height: 8,),
              const LabelWithAsterisk(labelText: AppString.address),
              const CustomTextFormField(hintText: AppString.address, maxLines: 2, ),
          
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