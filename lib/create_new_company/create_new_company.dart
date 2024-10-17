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
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CreateNewCompany extends StatelessWidget {
  const CreateNewCompany({super.key});

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
                        SizedBox(
                          height: 150,
                          width: 220,
                          child: Image.asset("assets/image/sublogo.png"),
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
                    child: Column(
                      children: [
                        Image.asset("assets/image/banklogo.PNG"),

                        const SizedBox(
                          height: 20,
                        ),

                        CustomButton(
                          text: "Create New Company",
                          icon: Icons.add,
                          onPressed: () {
                            Get.to(const GeneralInfo());
                          },
                          color: const Color(0xff2196f3),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        const Text(AppString.appAllreadyHaveAccount),
                        const DottedLine(),

                        const SizedBox(
                          height: 10,
                        ),

                        const Align(
                            alignment: Alignment.topLeft,
                            child: Text(AppString.companyEmail)),
                        // const  CustomTextEditForm(),

                        const CustomTextFormField(
                          hintText: "Company E-mail",
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
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 120,
                        ),

                        const CustomFourIconBottom(),
                      ],
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
}
