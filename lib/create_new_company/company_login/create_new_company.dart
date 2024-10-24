import 'dart:async';
import 'dart:io';
import 'package:dotted_line/dotted_line.dart';
import 'package:f_test/create_new_company/company_login/admin_user.dart';
import 'package:f_test/create_new_company/general_info/general_info.dart';
import 'package:f_test/create_new_company/company_login/create_new_company_password.dart';
import 'package:f_test/create_new_company/forget_password/forget_password_email.dart';
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
import '../../controller/pages/welcome.dart';
import '../../utils/imagepath.dart';
import '../business_address/business_addrerss.dart';

class CreateNewCompany extends StatefulWidget {
  const CreateNewCompany({super.key});

  @override
  State<CreateNewCompany> createState() => _CreateNewCompanyState();
}

class _CreateNewCompanyState extends State<CreateNewCompany> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  Timer? _timer;
  bool showPasswordField = false; // State to toggle password field

  bool showAdminTable = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                          children: [
                            SizedBox(
                              height: 150,
                              width: 150,
                              child: Image.asset("assets/image/cBook_logo_nobg.png"),
                            ),
                            const SizedBox(height: 20),
                            if (!showPasswordField)
                              Column(
                                children: [


                            const SizedBox(
                            height: 20,
                            ),

                          CustomButton(
                            text: "Create New Company",
                            icon: Icons.add,
                            onPressed: () {
                              Get.to(const GeneralInfo(), transition: Transition.rightToLeftWithFade);
                              // Get.to(() => ChangeNotifierProvider(
                              //   create: (context) => SideBarController(),
                              //   child: const EntryPoint(child: GeneralInfo(),),
                              // ));
                            },
                            color: const Color(0xff2196f3),
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          Container(),

                          const Text(AppString.appAllreadyHaveAccount),
                           const SizedBox(
                            height: 10,
                          ),
                          const DottedLine(
                            dashColor: Colors.grey,
                          ),

                          const SizedBox(
                            height: 10,
                          ),


                                  //email section
                                  const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(AppString.companyEmail),
                                  ),
                                  CustomTextFormField(
                                    hintText: "Company E-mail",
                                    controller: emailController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your valid Email';
                                      }
                                    },
                                  ),
                                  const SizedBox(height: 10),
                                  CustomButton(
                                    text: "Next",
                                    onPressed: () {
                                      setState(() {
                                        showPasswordField = true;
                                      });
                                    },
                                    color: const Color(0xff82c4f8),
                                  ),
                                ],
                              ),


                            //password section
                            if (showPasswordField)
                              Column(
                                children: [
                             const SizedBox(
                            height: 20,
                          ),

                          CustomButton(
                            text: "Create New Company",
                            icon: Icons.add,
                            onPressed: () {
                              //Get.to(const GeneralInfo());
                              Get.to(() => ChangeNotifierProvider(
                                create: (context) => SideBarController(),
                                child: const EntryPoint(child: GeneralInfo(),),
                              ));
                            },
                            color: const Color(0xff2196f3),
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          const Text(AppString.appAllreadyHaveAccount),
                           const SizedBox(
                            height: 10,
                          ),
                          const DottedLine(
                            dashColor: Colors.grey,
                          ),

                          const SizedBox(
                            height: 10,
                          ),
                                  const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(AppString.password),
                                  ),
                                  CustomTextFormField(
                                    hintText: "Password",
                                    controller: passController,
                                  ),
                                  const SizedBox(height: 10),
                                  CustomButton(
                                    text: "Login",
                                    onPressed: () {
                                      showAdminTable == true;
                                      Get.to(const AdminUser(),
                                          transition: Transition.rightToLeftWithFade);
                                    },
                                    color: const Color(0xff82c4f8),
                                  ),
                                ],
                              ),

                            const SizedBox(height: 10),
                            GestureDetector(
                              onTap: () {
                                Get.to(const ForgetPasswordEmail(),
                                    transition: Transition.rightToLeftWithFade);
                              },
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  AppString.forgetPassword,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400, color: Colors.redAccent),
                                ),
                              ),
                            ),
                            const SizedBox(height: 250),
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
























// class CreateNewCompany extends StatefulWidget {
//   const CreateNewCompany({super.key});
//
//   @override
//   State<CreateNewCompany> createState() => _CreateNewCompanyState();
// }
//
// class _CreateNewCompanyState extends State<CreateNewCompany> {
//   final PageController _pageController = PageController();
//   int _currentIndex = 0;
//   Timer? _timer;
//   bool showPasswordField = false; // State to toggle password field
//   bool showAdminTable = false; // State to show admin table after login
//
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passController = TextEditingController();
//
//   @override
//   void initState() {
//     super.initState();
//
//     // Auto-scroll timer for image slider
//     _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
//       if (_currentIndex < 3) {
//         _currentIndex++;
//       } else {
//         _currentIndex = 0;
//       }
//
//       _pageController.animateToPage(
//         _currentIndex,
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//     });
//   }
//
//   @override
//   void dispose() {
//     _timer?.cancel(); // Dispose timer when the widget is disposed
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 90),
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.grey[200],
//             borderRadius: BorderRadius.circular(5),
//           ),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 16.0, right: 16),
//                 child: Align(
//                   alignment: Alignment.topRight,
//                   child: CircleAvatar(
//                     backgroundColor: Colors.white,
//                     radius: 20,
//                     child: IconButton(
//                       onPressed: () {
//                         showAlertDialog(context);
//                       },
//                       icon: const Icon(Icons.close),
//                     ),
//                   ),
//                 ),
//               ),
//               Row(
//                 children: [
//                   Expanded(
//                     flex: 1,
//                     child: buildSlider(), // Image slider on the left
//                   ),
//                   Expanded(
//                     flex: 2,
//                     child: Padding(
//                       padding: const EdgeInsets.only(right: 60.0),
//                       child: Form(
//                         key: formKey,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const SizedBox(height: 20),
//                             if (!showPasswordField && !showAdminTable) ...[
//                               const Text("Company E-mail"),
//                               TextFormField(
//                                 controller: emailController,
//                                 decoration: InputDecoration(
//                                   hintText: "Company E-mail",
//                                   border: OutlineInputBorder(),
//                                 ),
//                                 validator: (value) {
//                                   if (value == null || value.isEmpty) {
//                                     return 'Please enter a valid Email';
//                                   }
//                                   return null;
//                                 },
//                               ),
//                               const SizedBox(height: 10),
//                               ElevatedButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     showPasswordField = true;
//                                   });
//                                 },
//                                 child: const Text("Next"),
//                                 style: ElevatedButton.styleFrom(
//                                  // primary: const Color(0xff82c4f8),
//                                 ),
//                               ),
//                             ],
//
//                             if (showPasswordField && !showAdminTable) ...[
//                               const Text("Password"),
//                               TextFormField(
//                                 controller: passController,
//                                 obscureText: true,
//                                 decoration: InputDecoration(
//                                   hintText: "Password",
//                                   border: OutlineInputBorder(),
//                                 ),
//                                 validator: (value) {
//                                   if (value == null || value.isEmpty) {
//                                     return 'Please enter your password';
//                                   }
//                                   return null;
//                                 },
//                               ),
//                               const SizedBox(height: 10),
//                               ElevatedButton(
//                                 onPressed: () {
//                                   if (formKey.currentState!.validate()) {
//                                     setState(() {
//                                       showPasswordField = false;
//                                       showAdminTable = true;
//                                     });
//                                   }
//                                 },
//                                 child: const Text("Login"),
//                                 style: ElevatedButton.styleFrom(
//                                   //primary: const Color(0xff82c4f8),
//                                 ),
//                               ),
//                             ],
//
//                             if (showAdminTable)
//                               Column(
//                                 children: [
//                                   const SizedBox(height: 20),
//                                   const Text(
//                                     "Admin Companies",
//                                     style: TextStyle(
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   const SizedBox(height: 10),
//                                   buildAdminTable(), // Admin table after login
//                                 ],
//                               ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Container(
//                 decoration: BoxDecoration(),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   // Slider widget for the left side
//   Widget buildSlider() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const SizedBox(height: 10),
//         Container(
//           height: 200,
//           width: 300,
//           child: Column(
//             children: [
//               Expanded(
//                 child: PageView(
//                   controller: _pageController,
//                   onPageChanged: (index) {
//                     setState(() {
//                       _currentIndex = index;
//                     });
//                   },
//                   children: [
//                     buildSliderItem('Company 1', 'assets/image1.png', () {}),
//                     buildSliderItem('Company 2', 'assets/image2.png', () {}),
//                     buildSliderItem('Company 3', 'assets/image3.png', () {}),
//                     buildSliderItem('Company 4', 'assets/image4.png', () {}),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 16),
//                 child: SmoothPageIndicator(
//                   controller: _pageController,
//                   count: 4, // Number of pages
//                   effect: const ExpandingDotsEffect(
//                     activeDotColor: Colors.blue,
//                     dotColor: Colors.grey,
//                     dotHeight: 10,
//                     dotWidth: 10,
//                     expansionFactor: 3,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
//   // Slider item with a clickable image and label
//   Widget buildSliderItem(String label, String imagePath, VoidCallback onTap) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(imagePath, height: 100), // Adjust the size of the image
//           const SizedBox(height: 20),
//           Text(
//             label,
//             style: const TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.blue,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // Admin table widget
//   Widget buildAdminTable() {
//     final List<Map<String, String>> companyData = [
//       {"company": "Dream International Ltd", "data": "500MB"},
//       {"company": "Nuzaima Enterprise", "data": "1.5GB"},
//     ];
//
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Table(
//         border: TableBorder.all(),
//         children: [
//           buildRow(['Company Name', 'Data', 'Action'], isHeader: true),
//           for (var company in companyData)
//             buildRow([company['company']!, company['data']!, 'Open'],
//                 isHeader: false),
//         ],
//       ),
//     );
//   }
//
//   // Helper to create table rows
//   TableRow buildRow(List<String> cells, {bool isHeader = false}) {
//     return TableRow(
//       decoration: isHeader
//           ? const BoxDecoration(
//         color: Colors.blue,
//       )
//           : null,
//       children: cells.map((cell) {
//         return Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: isHeader
//               ? Center(
//             child: Text(
//               cell,
//               style: const TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//           )
//               : Center(
//             child: cell == 'Open'
//                 ? TextButton(
//                 onPressed: () {
//                   // Handle the "Open" button click here
//                 },
//                 child: const Text(
//                   "Open",
//                   style: TextStyle(
//                       color: Colors.blue,
//                       fontWeight: FontWeight.bold),
//                 ))
//                 : Text(cell),
//           ),
//         );
//       }).toList(),
//     );
//   }
//
//   // Alert dialog for quitting the app
//   void showAlertDialog(BuildContext context) {
//     Widget cancelButton = TextButton(
//       child: const Text("Cancel"),
//       onPressed: () {
//         Navigator.of(context).pop();
//       },
//     );
//     Widget continueButton = TextButton(
//       child: const Text("Quit", style: TextStyle(color: Colors.red)),
//       onPressed: () {
//         exit(0);
//       },
//     );
//     AlertDialog alert = AlertDialog(
//       title: const Text("Quit"),
//       content: const Text("Are you sure you want to quit?"),
//       actions: [
//         cancelButton,
//         continueButton,
//       ],
//     );
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return alert;
//       },
//     );
//   }
// }
//
