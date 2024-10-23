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

  final TextEditingController countryInfoController = TextEditingController();
  final TextEditingController zipCodeController = TextEditingController();
  final TextEditingController businessAddressController = TextEditingController();
   

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

              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/image/cBook_logo_nobg.png"),
                ),
              ),

              const SizedBox(height: 20),


              
              const LabelWithAsterisk(labelText: AppString.countryInfo),
              CustomTextFormField(hintText: AppString.countryInfo, controller: countryInfoController,),
              const SizedBox(height: 8),
              
              const LabelWithAsterisk(labelText: AppString.zipCode),
              CustomTextFormField(hintText: AppString.zipCode, controller:  zipCodeController),
              const SizedBox(height: 8),
              
              const LabelWithAsterisk(labelText: AppString.businessAddress),
              CustomTextFormField(hintText: AppString.businessAddress, controller: businessAddressController),
              const SizedBox(height: 8),
              
               

              const SizedBox(height: 30),

               
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










 


