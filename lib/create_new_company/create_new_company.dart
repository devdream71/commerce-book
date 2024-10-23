import 'dart:async';
import 'dart:io';
import 'package:dotted_line/dotted_line.dart';
import 'package:f_test/create_new_company/general_info.dart';
import 'package:f_test/create_new_company/create_new_company_password.dart';
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

import '../controller/controller/side_bar_controller.dart';
import '../controller/pages/entry_point.dart';
import '../controller/pages/welcome.dart';
import '../utils/imagepath.dart';
import 'business_address/business_addrerss.dart';

class CreateNewCompany extends StatefulWidget {
  const CreateNewCompany({super.key});

  @override
  State<CreateNewCompany> createState() => _CreateNewCompanyState();
}

class _CreateNewCompanyState extends State<CreateNewCompany> {


  final PageController _pageController = PageController();
  int _currentIndex = 0;
  Timer? _timer;

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
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 90, right: 90, top: 90, bottom: 90),
        child: Container(
          decoration: BoxDecoration(
              color: AppColor.appBGColor,
              borderRadius: BorderRadius.circular(5)),
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
                              // SystemNavigator.pop();
                              // exit(0);
                              showAlertDialog(context);
                            },
                            icon: const Icon(Icons.close))),
                  ],
                ),
              ),
              Row(children: [
                //left size

                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 80.0, right: 80),
                  child: Container(
                    // color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomFourIconTop(),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomThumbUpFive(),
                        const SizedBox(
                          height: 10,
                        ),
                        const Custom11DotButton(),
                        const SizedBox(
                          height: 30,
                        ),



                        // Image Slider with clickable icons
                        Container(
                          //color: Colors.amber,
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
                                    buildSliderItem('cBook', AppImage.appBannerLeft,
                                            () {
                                          print("Academy clicked");
                                        }),
                                    buildSliderItem('Dream Tech', AppImage.appBankLogo,
                                            () {
                                          print("Teacher clicked");
                                        }),
                                    buildSliderItem('cBook', AppImage.appBannerLeft,
                                             () {
                                          print("Student clicked");
                                        }),
                                    buildSliderItem('Dream Tech', AppImage.appBankLogo,
                                            () {
                                          print("Home Tutor clicked");
                                          // Get.to(const HomeTutorPage(),
                                          //     transition: Transition.rightToLeftWithFade);
                                        }),
                                  ],
                                ),
                              ),

                              // Dot Indicator for the slider
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
                )),

                //right side
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(right: 60.0),
                  child: Container(
                    // color: Colors.red,
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          // InkWell(
                          //   onTap: (){
                          //
                          //     //Get.to(SideBarController());
                          //     //ChangeNotifierProvider(create: (context)=>SideBarController());
                          //   },
                          //
                          //   child: SizedBox(
                          //     height: 150,
                          //     width: 150,
                          //     child: Image.asset("assets/image/cBook_logo_nobg.png")),
                          // ),

                          SizedBox(
                            height: 150,
                            width: 150,
                            child: Image.asset("assets/image/cBook_logo_nobg.png"),
                          ),

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
                              child: Text(AppString.companyEmail)),
                          // const  CustomTextEditForm(),

                          CustomTextFormField(
                            hintText: "Company E-mail",
                            controller: emailController,
                            validator: (value) {
                              if(value ==null || value.isEmpty) {
                                return 'Please enter your valid Email';
                              }
                            },

                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          CustomButton(
                            text: "Next",
                            onPressed: () {

                              Get.to(const CreateNewCompanyPassword(),
                                  transition: Transition.rightToLeftWithFade);
                            },
                            color: const Color(0xff82c4f8),
                          ),

                          const SizedBox(
                            height: 10,
                          ),
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
                                    fontWeight: FontWeight.w400,
                                    color: Colors.redAccent),
                              ),
                            ),
                          ),

                          const SizedBox(
                            height: 250,
                          ),


                          const CustomFourIconBottom(),

                          const SizedBox(
                            height: 30,
                          ),

                        ],
                      ),
                    ),
                  ),
                ))
              ]),
            ],
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: const Text("Cancel"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: const Text(
        "Quit",
        style: TextStyle(color: Colors.red),
      ),
      onPressed: () {
        exit(0);
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Quit"),
      content: const Text("Are you sure, you wanna quit?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    // show the dialog
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


}
