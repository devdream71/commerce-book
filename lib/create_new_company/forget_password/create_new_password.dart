import 'package:f_test/widgets/custom_11_dot_button.dart';
import 'package:f_test/widgets/custom_four_icon_bottom.dart';
import 'package:f_test/widgets/custom_four_icon_top.dart';
import 'package:f_test/widgets/custom_thumb_up_five.dart';
import 'package:flutter/material.dart';
import 'package:f_test/utils/color.dart';
import 'package:f_test/utils/string.dart';
import 'package:f_test/widgets/custom_button.dart';
import 'package:f_test/widgets/custom_icon_text.dart';
import 'package:f_test/widgets/custom_text_edit_form.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 90.0, left: 90, right: 90, bottom: 90),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColor.appBGColor,
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
          
              Row(children: [
              
                //left side
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 50),
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
                      
                      Image.asset("assets/image/banklogo.PNG"),
              
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
                        height: 30,
                      ),
              
                      const Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            AppString.demoemail,
                            style: TextStyle(color: Colors.blue),
                          )),
                      const SizedBox(
                        height: 30,
                      ),
              
                      const Align(
                          alignment: Alignment.topLeft,
                          child: const Text(AppString.newPassword)),
                      // const  CustomTextEditForm(),
              
                      const CustomTextFormField(
                        hintText: "Password",
                      ),
              
                      const Align(
                          alignment: Alignment.topLeft,
                          child: const Text(AppString.rePassword)),
                      // const  CustomTextEditForm(),
              
                      const CustomTextFormField(
                        hintText: "re - Password",
                      ),
              
                      const SizedBox(
                        height: 30,
                      ),
              
                      CustomButton(
                        text: "Submit",
                        onPressed: () {},
                        color: const Color(0xff82c4f8),
                      ),
              
                      const SizedBox(
                        height: 10,
                      ),
              
                      const SizedBox(
                        height: 120,
                      ),
              
                      const CustomFourIconBottom(),
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
