// import 'package:f_test/utils/color.dart';
// import 'package:f_test/utils/string.dart';
// import 'package:f_test/widgets/bottom_four_text.dart';
// import 'package:f_test/widgets/custom_button.dart';
// import 'package:f_test/widgets/custom_text_edit_form.dart';
// import 'package:f_test/widgets/label_with_asterisk.dart';
// import 'package:flutter/material.dart';
//
// class GeneralInfo extends StatefulWidget {
//   const GeneralInfo({super.key});
//
//   @override
//   State<GeneralInfo> createState() => _GeneralInfoState();
// }
//
// class _GeneralInfoState extends State<GeneralInfo> {
//
//   TextEditingController proprietorNameController = TextEditingController();
//   TextEditingController countryInfoController = TextEditingController();
//   TextEditingController mobileController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController addressController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return   Scaffold(
//       backgroundColor: AppColor.appBGColor,
//       body: Padding(
//         padding: const EdgeInsets.only(
//           left: 90.0,
//           right: 90,
//           top: 90,
//         ),
//         child: SingleChildScrollView(
//           child: Container(
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5),
//                 color: Color(0xffE0E0E0)),
//             child: Padding(
//               padding: const EdgeInsets.all(25.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       // CircleAvatar(
//                       //     backgroundColor: Colors.white,
//                       //     child: IconButton(
//                       //         onPressed: () {
//                       //           //Get.back();
//                       //         },
//                       //         icon: const Icon(Icons.arrow_back))),
//                       CircleAvatar(
//                         //radius: 10,
//                           backgroundColor: Colors.white,
//                           child: IconButton(
//                               onPressed: () {}, icon: const Icon(Icons.close,
//                           ))),
//
//
//                     ],
//                   ),
//
//                   const Align(
//                     alignment: Alignment.center,
//                     child: Text("Company Information", style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),)),
//                   const SizedBox(height: 10,),
//
//                   Align(
//                     alignment: Alignment.center,
//                     child: SizedBox(
//                       height: 100,
//                       width: 100,
//                       child: Image.asset("assets/image/cBook_logo_nobg.png"),
//                     ),
//                   ),
//
//                   const SizedBox(height: 10,),
//
//                   const LabelWithAsterisk(labelText: AppString.proprietorName, isRequired: true,),
//                     CustomTextFormField(hintText: "Jasim Islam",
//                   controller: proprietorNameController,
//                   ),
//                   const SizedBox(height: 8,),
//                   const LabelWithAsterisk(labelText: AppString.countryInfo, isRequired: true,),
//                     CustomTextFormField(hintText: "Bangladesh", showDropdownIcon: true,
//                   controller: countryInfoController,
//                   ),
//                   const SizedBox(height: 8,),
//                   const LabelWithAsterisk(labelText: AppString.mobile, isRequired: true,),
//                   CustomTextFormField(hintText: "+880 1759 546853", controller: mobileController,),
//                   const SizedBox(height: 8,),
//                   const LabelWithAsterisk(labelText: AppString.email, isRequired: true,),
//                   CustomTextFormField(hintText: "jasim@gmail.com", controller: emailController,),
//                   const SizedBox(height: 8,),
//                   // const LabelWithAsterisk(labelText: AppString.address, isRequired: true,),
//                   // CustomTextFormField(hintText: "#H 24, #R 14, Dhanmondi, Dhaka Bangladesh", maxLines: 1, controller: addressController,),
//                   // const SizedBox(height: 8,),
//
//                   Row(
//                     children: [
//                       Expanded(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//
//                             const LabelWithAsterisk(labelText: "Company Password", isRequired: true,),
//                             CustomTextFormField(hintText: "Company Password", controller: emailController,),
//                           ],
//                         ),
//                       ),
//                       SizedBox(width: 10,),
//                       Expanded(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const LabelWithAsterisk(labelText: "Company Conform Password", isRequired: true,),
//                             CustomTextFormField(hintText: "Company Conform Password", controller: emailController,),
//                           ],
//                         ),
//                       )
//                     ],
//
//                   ),
//
//
//                   const SizedBox(height: 8,),
//
//                   const SizedBox(height: 25,),
//
//                  //using custom bottom text.
//                   const BottomFourText(),
//
//                   const SizedBox(height: 25,),
//
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       SizedBox(
//                           width: 100,
//                           child: CustomButton(onPressed: (){}, text: "Update", color: Colors.blue.withOpacity(0.2),)),
//                       const SizedBox(width: 10,),
//                       SizedBox(
//                         width: 100,
//                           child: CustomButton(onPressed: (){}, text: "Save", color: Colors.blue,)),
//
//                     ],
//                   )
//
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }












/////////=====
import 'dart:async';
import 'dart:io';
import 'package:dotted_line/dotted_line.dart';
import 'package:f_test/create_new_company/company_login/admin_user.dart';
import 'package:f_test/create_new_company/general_info/general_info.dart';
import 'package:f_test/create_new_company/company_login/create_new_company_password.dart';
import 'package:f_test/create_new_company/forget_password/forget_password_email.dart';
import 'package:f_test/create_new_company/otp/otp.dart';
import 'package:f_test/utils/color.dart';
import 'package:f_test/utils/string.dart';
import 'package:f_test/widgets/custom_11_dot_button.dart';
import 'package:f_test/widgets/custom_button.dart';
import 'package:f_test/widgets/custom_four_icon_bottom.dart';
import 'package:f_test/widgets/custom_four_icon_top.dart';
import 'package:f_test/widgets/custom_text_edit_form.dart';
import 'package:f_test/widgets/custom_thumb_up_five.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controller/controller/side_bar_controller.dart';
import '../../controller/pages/entry_point.dart';
import '../../controller/pages/global_widget/labelwithasterisk.dart';
import '../../controller/pages/welcome.dart';
import '../../utils/imagepath.dart';
import '../business_address/business_addrerss.dart';

class GeneralInfo extends StatefulWidget {
  const GeneralInfo({super.key});

  @override
  State<GeneralInfo> createState() => _GeneralInfoState();
}

class _GeneralInfoState extends State<GeneralInfo> {


  final PageController _pageController = PageController();
  int _currentIndex = 0;
  Timer? _timer;
  bool showPasswordField = false; // State to toggle password field

  bool showAdminTable = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  TextEditingController proprietorNameController = TextEditingController();
  TextEditingController countryInfoController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Auto-scroll timer
    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_currentIndex < 3) {
        _currentIndex++;
      } else {
        _currentIndex = 0;
      }

      _pageController.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 90, right: 90, top: 90, bottom: 90),
        child: Container(
          decoration: BoxDecoration(
            color: AppColor.appBGColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: IconButton(
                        onPressed: () {
                         Get.back();
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: IconButton(
                        onPressed: () {
                          showAlertDialog(context);
                        },
                        icon: const Icon(Icons.close),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  //left side
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 80.0, right: 80),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomFourIconTop(),
                          const SizedBox(height: 10),
                          const CustomThumbUpFive(),
                          const SizedBox(height: 10),
                          const Custom11DotButton(),
                          const SizedBox(height: 30),
                          // Image Slider
                          Container(
                            height: 200,
                            width: 300,
                            child: Column(
                              children: [
                                Expanded(
                                  child: PageView(
                                    controller: _pageController,
                                    onPageChanged: (index) {
                                      setState(() {
                                        _currentIndex = index;
                                      });
                                    },
                                    children: [
                                      buildSliderItem('cBook', AppImage.appBannerLeft, () {}),
                                      buildSliderItem('Dream Tech', AppImage.appBankLogo, () {}),
                                      buildSliderItem('cBook', AppImage.appBannerLeft, () {}),
                                      buildSliderItem('Dream Tech', AppImage.appBankLogo, () {}),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                  child: SmoothPageIndicator(
                                    controller: _pageController,
                                    count: 4, // Number of pages
                                    effect: const ExpandingDotsEffect(
                                      activeDotColor: Colors.blue,
                                      dotColor: Colors.grey,
                                      dotHeight: 10,
                                      dotWidth: 10,
                                      expansionFactor: 3,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //right side
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 60.0),
                      child: Form(
                        key: formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 150,
                                width: 150,
                                child: Image.asset("assets/image/cBook_logo_nobg.png"),
                              ),
                            ),
                            const SizedBox(height: 20),

                            const LabelWithAsterisk(labelText: AppString.proprietorName, ),
                    CustomTextFormField(hintText: "Jasim Islam",
                  controller: proprietorNameController,
                  ),
                  const SizedBox(height: 8,),
                  const LabelWithAsterisk(labelText: AppString.countryInfo, ),
                    CustomTextFormField(hintText: "Bangladesh", showDropdownIcon: true,
                  controller: countryInfoController,
                  ),
                  const SizedBox(height: 8,),
                  const LabelWithAsterisk(labelText: AppString.mobile, ),
                  CustomTextFormField(hintText: "+880 1759 546853", controller: mobileController,),
                  const SizedBox(height: 8,),
                  const LabelWithAsterisk(labelText: AppString.email, ),
                  CustomTextFormField(hintText: "jasim@gmail.com", controller: emailController,),
                  const SizedBox(height: 8,),
                  // const LabelWithAsterisk(labelText: AppString.address, isRequired: true,),
                  // CustomTextFormField(hintText: "#H 24, #R 14, Dhanmondi, Dhaka Bangladesh", maxLines: 1, controller: addressController,),
                  // const SizedBox(height: 8,),

                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            const LabelWithAsterisk(labelText: "Company Password", ),
                            CustomTextFormField(hintText: "Company Password", controller: emailController,),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const LabelWithAsterisk(labelText: "Company Conform Password", ),
                            CustomTextFormField(hintText: "Company Conform Password", controller: emailController,),
                          ],
                        ),
                      )
                    ],

                  ),
                  SizedBox(height: 10,),
                            CustomButton(
                              text: "Send OTP",
                              icon: Icons.add,
                              onPressed: () {
                                 Get.to(const CreateOtp(), transition: Transition.rightToLeftWithFade);
                                // Get.to(() => ChangeNotifierProvider(
                                //   create: (context) => SideBarController(),
                                //   child: const EntryPoint(child: GeneralInfo(),),
                                // ));
                              },
                              color: const Color(0xff2196f3),
                            ),




                            const SizedBox(height: 80),
                            const CustomFourIconBottom(),
                            const SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    Widget cancelButton = TextButton(
      child: const Text("Cancel"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: const Text("Quit", style: TextStyle(color: Colors.red)),
      onPressed: () {
        exit(0);
      },
    );
    AlertDialog alert = AlertDialog(
      title: const Text("Quit"),
      content: const Text("Are you sure, you wanna quit?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  // Slider item with a clickable icon and label
  Widget buildSliderItem(String label, String imagePath, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap, // Handle tap
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 100), // Adjust the size of the image
          const SizedBox(height: 20),
          Text(
            label,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }


  // Admin Table
  Widget buildAdminTable() {
    final List<Map<String, String>> companyData = [
      {"company": "Dream International Ltd", "data": "500MB"},
      {"company": "Nuzaima Enterprice", "data": "1.5GB"},
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Table(
        border: TableBorder.all(),
        children: [
          buildRow(['Company Name', 'Role', 'Action'], isHeader: true),
          for (var company in companyData)
            buildRow([company['company']!, company['data']!, 'Open'],
                isHeader: false),
        ],
      ),
    );
  }
}


TableRow buildRow(List<String> cells, {bool isHeader = false}) {
  return TableRow(
    decoration: isHeader
        ? const BoxDecoration(
      color: Colors.blue,
    )
        : null,
    children: cells.map((cell) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: isHeader
            ? Center(
          child: Text(
            cell,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
            : Center(
          child: cell == 'Open'
              ? TextButton(
              onPressed: () {
                //Get.to(const ForgetPasswordEmail());
              },
              child: const Text(
                "Open",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ))
              : Text(cell),
        ),
      );
    }).toList(),
  );
}




















