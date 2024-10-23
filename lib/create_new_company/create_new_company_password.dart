import 'package:dotted_line/dotted_line.dart';
import 'package:f_test/create_new_company/admin_user.dart';
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

class CreateNewCompanyPassword extends StatefulWidget {
  const CreateNewCompanyPassword({super.key});

  @override
  State<CreateNewCompanyPassword> createState() => _CreateNewCompanyPasswordState();
}

class _CreateNewCompanyPasswordState extends State<CreateNewCompanyPassword> {

   TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 90.0,
          right: 90,
          top: 90,
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColor.appBGColor),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(Icons.arrow_back))),
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.close))),
                  ],
                ),
              ),
              Row(mainAxisSize: MainAxisSize.min, children: [
                //left side
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 80.0, right: 80),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
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
                )),
                //right side
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(right: 60.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.asset("assets/image/cBook_logo_nobg.png")),

                      const SizedBox(
                        height: 20,
                      ),

                      CustomButton(
                        text: "Create New Company",
                        icon: Icons.add,
                        onPressed: () {},
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
                          child: const Text(AppString.password)),
                      // const  CustomTextEditForm(),

                      CustomTextFormField(
                        hintText: "Password",
                        controller: passController,
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      CustomButton(
                        text: "login",
                        onPressed: () {
                          Get.to(const AdminUser(),
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
                            )),
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
                ))
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
