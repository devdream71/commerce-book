import 'package:f_test/utils/string.dart';
import 'package:f_test/widgets/bottom_four_text.dart';
import 'package:f_test/widgets/custom_button.dart';
import 'package:f_test/widgets/custom_text_edit_form.dart';
import 'package:f_test/widgets/label_with_asterisk.dart';
import 'package:flutter/material.dart';

class VatTax extends StatefulWidget {
  const VatTax({super.key});

  @override
  State<VatTax> createState() => _VatTaxState();
}

class _VatTaxState extends State<VatTax> {

  final TextEditingController vatController = TextEditingController();
  final TextEditingController   taxController = TextEditingController();
   

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
              const Align(
                alignment: Alignment.center,
                child: const Text(
                  "Company Information",
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                ),
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
              
              const LabelWithAsterisk(labelText: AppString.vat),
               CustomTextFormField(hintText: AppString.vat, controller : vatController),
              const SizedBox(height: 8),
              
              const LabelWithAsterisk(labelText: AppString.tax),
               CustomTextFormField(hintText: AppString.tax, controller: taxController,),
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
