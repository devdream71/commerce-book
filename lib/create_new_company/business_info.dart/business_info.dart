import 'package:f_test/utils/color.dart'; 
import 'package:f_test/utils/string.dart';
import 'package:f_test/widgets/bottom_four_text.dart';
import 'package:f_test/widgets/custom_button.dart';
import 'package:f_test/widgets/custom_text_edit_form.dart';
import 'package:f_test/widgets/label_with_asterisk.dart';
import 'package:flutter/material.dart';

class BusinessInfo extends StatefulWidget {
  const BusinessInfo({super.key});

  @override
  State<BusinessInfo> createState() => _BusinessInfoState();
}

class _BusinessInfoState extends State<BusinessInfo> {
  final Map<String, bool> _businessCategories = {
    "Manufacturing": false,
    "Depot": false,
    "Wholesale": false,
    "Dealership": false,
    "Retailer": false,
    "Entrepreneur": false,
    "Export & Import": false,
    "E-Commerce": false,
    "Service": false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColor.appBGColor,
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
              
              const LabelWithAsterisk(labelText: AppString.ownerShip),
              const CustomTextFormField(hintText: AppString.ownerShip, showDropdownIcon: true),
              const SizedBox(height: 8),

              
              const LabelWithAsterisk(labelText: AppString.businessStartYear),
              const CustomTextFormField(hintText: AppString.businessAddress, showDropdownIcon: true),
              const SizedBox(height: 8),

              
              const LabelWithAsterisk(labelText: AppString.softwareStartDate),
              const CustomTextFormField(hintText: AppString.softwareStartDate, showDropdownIcon: true),
              const SizedBox(height: 8),

              
              const LabelWithAsterisk(labelText: AppString.openingCash),
              const CustomTextFormField(hintText: AppString.openingCash),
              const SizedBox(height: 8),

              
              const LabelWithAsterisk(labelText: AppString.treadLicenseNO),
              const CustomTextFormField(hintText: AppString.treadLicenseNO),
              const SizedBox(height: 8),

              
              const LabelWithAsterisk(labelText: AppString.vatBinNo),
              const CustomTextFormField(hintText: AppString.vatBinNo),

              const SizedBox(height: 20),

              const Text(
                "Business Category",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 10),

              // Business Category Grid with constrained height
              SizedBox(
                height: 250, 
                child: GridView.count(
                  crossAxisCount: 3,  
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  childAspectRatio: 3, 
                  children: _businessCategories.keys.map((category) {
                    return CheckboxListTile(
                      value: _businessCategories[category],
                      title: Text(category),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (bool? value) {
                        setState(() {
                          _businessCategories[category] = value!;
                        });
                      },
                    );
                  }).toList(),
                ),
              ),

              const LabelWithAsterisk(labelText: AppString.businessType),
              const CustomTextFormField(hintText: AppString.businessType, showDropdownIcon: true),

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



/////////////<<<<<>>>>>
 

class BusinessLogoWidget extends StatelessWidget {
  const BusinessLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Business Logo",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
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
                child: IconButton(
                  icon: const Icon(Icons.upload, color: Colors.grey),
                  onPressed: () {
                    // Upload logic goes here
                  },
                ),
              ),

              // Delete Icon (Positioned beneath the upload icon)
              Positioned(
                right: 4,
                top: 40,
                child: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.grey),
                  onPressed: () {
                    // Delete logic goes here
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

 











 


