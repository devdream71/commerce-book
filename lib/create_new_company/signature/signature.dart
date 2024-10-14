import 'package:f_test/utils/color.dart';
import 'package:f_test/utils/string.dart';
import 'package:f_test/widgets/custom_button.dart';
import 'package:f_test/widgets/custom_text_edit_form.dart';
import 'package:f_test/widgets/label_with_asterisk.dart';
import 'package:flutter/material.dart';

class Signature extends StatefulWidget {
  const Signature({super.key});

  @override
  State<Signature> createState() => _SignatureState();
}

class _SignatureState extends State<Signature> {
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBGColor,
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
                  const SizedBox(height: 30,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 
                  const SizedBox(height: 20),
              
                  Column(
                    children: [
                        const Text(
                "Business Logo",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45,
                ),
              ),
              const SizedBox(height: 8),
              
              // Business Logo Container
              Stack(
                children: [
                  Container(
                    width: 150, // Set the size of the logo box
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.image, // Placeholder for the image
                        size: 50,
                        color: Colors.grey,
                      ),
                    ),
                  ),
              
                  // Upload Icon (Positioned at top-right)
                  Positioned(
                    right: 4,
                    top: 4,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue.withOpacity(0.2),
                      child: IconButton(
                        icon: const Icon(Icons.upload, color: Colors.blue),
                        onPressed: () {
                          // Upload logic goes here
                        },
                      ),
                    ),
                  ),
              
                  // Delete Icon (Positioned beneath the upload icon)
                  Positioned(
                    right: 4,
                    top: 50,
                    child: CircleAvatar(
                      backgroundColor: Colors.red.withOpacity(0.2),
                      child: IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          // Delete logic goes here
                        },
                      ),
                    ),
                  ),
                ],),
              
                    ],
                  ),
              
                 
              
                const SizedBox(width: 50,),
              
              
              
              
               Column(
                children: [
                      const Text(
                "Signature",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45,
                ),
              ),
              const SizedBox(height: 8),
              
              // Business Logo Container
              Stack(
                children: [
                  Container(
                    width: 150, // Set the size of the logo box
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.image, // Placeholder for the image
                        size: 50,
                        color: Colors.grey,
                      ),
                    ),
                  ),
              
                  // Upload Icon (Positioned at top-right)
                  Positioned(
                    right: 4,
                    top: 4,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue.withOpacity(0.2),
                      child: IconButton(
                        icon: const Icon(Icons.upload, color: Colors.blue),
                        onPressed: () {
                          // Upload logic goes here
                        },
                      ),
                    ),
                  ),
              
                  // Delete Icon (Positioned beneath the upload icon)
                  Positioned(
                    right: 4,
                    top: 50,
                    child: CircleAvatar(
                      backgroundColor: Colors.red.withOpacity(0.2),
                      child: IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          // Delete logic goes here
                        },
                      ),
                    ),
                  ),
                ],),
                  
                ],
               ),
              
                  
                   
                
              
                
                ],
              ),
                const SizedBox(height: 50),
              
                  const Text("• ${AppString.thisISClouldBaseSoftware}"),
                  const Text("• ${AppString.companyNameIsOnlyMAndatory}"),
                  const Text("• ${AppString.andAdminpasswordisMandatory}"),
                  const Text("• ${AppString.enjoyBusinessUseCommerceBookSofware}"),
              
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
