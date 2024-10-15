import 'package:f_test/utils/string.dart';
import 'package:f_test/widgets/bottom_four_text.dart';
import 'package:f_test/widgets/custom_button.dart';
import 'package:f_test/widgets/custom_text_edit_form.dart';
import 'package:f_test/widgets/label_with_asterisk.dart';
import 'package:flutter/material.dart';

class OtherInfo extends StatefulWidget {
  const OtherInfo({super.key});

  @override
  State<OtherInfo> createState() => _OtherInfoState();
}

class _OtherInfoState extends State<OtherInfo> {

     bool isChecked = false;
   

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
              
              const LabelWithAsterisk(labelText: AppString.adminName),
              const CustomTextFormField(hintText: AppString.adminName),
              const SizedBox(height: 8),
              
              const LabelWithAsterisk(labelText: AppString.mobileNumber),
              const CustomTextFormField(hintText: AppString.mobileNumber),
              const SizedBox(height: 8),

              Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           const SizedBox(height: 8),
              const Text(
                "Please Your Mail",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              
              Row(
                children: [
                  // Email TextField
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Company E-Mail",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  // Send OTP Button
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle OTP send action here
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red, // Set button color to red
                            shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),  
                                ),
                          ),
                          child: const Text("Send OTP", style: TextStyle(color: Colors.white, fontSize: 10),),
                        ),
                        const Text(
                    "Check Your Mail",
                    style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                      ],
                    ),
                  ),

                const SizedBox(width: 10,),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                         
                        SizedBox(
                          height: 32,
                          child: TextFormField(
                            decoration: const InputDecoration(
                               
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const Text(
                    "Click Tick Mark",
                    style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 5),
                  // Checkbox
                  Expanded(
                    flex: 1,
                    child: Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      activeColor: Colors.red,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              // Descriptions for the OTP and checkbox
               
            ],
          ),
            
            const SizedBox(height: 8,),

              const LabelWithAsterisk(labelText: AppString.password),
              const CustomTextFormField(hintText: AppString.password),
              const SizedBox(height: 8),

              const LabelWithAsterisk(labelText: AppString.rePassword),
              const CustomTextFormField(hintText: AppString.rePassword),
              const SizedBox(height: 8),


              Column(
                    children: [
                        const Text(
                "Picture",
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
