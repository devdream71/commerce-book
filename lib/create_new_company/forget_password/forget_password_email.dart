import 'package:f_test/create_new_company/forget_password/create_new_password.dart';
import 'package:f_test/widgets/custom_11_dot_button.dart';
import 'package:f_test/widgets/custom_four_icon_bottom.dart';
import 'package:f_test/widgets/custom_four_icon_top.dart';
import 'package:f_test/widgets/custom_thumb_up_five.dart';
import 'package:flutter/material.dart';
import 'package:f_test/utils/color.dart';
import 'package:f_test/widgets/custom_button.dart';
import 'package:get/get.dart';

class ForgetPasswordEmail extends StatefulWidget {
  const ForgetPasswordEmail({super.key});

  @override
  State<ForgetPasswordEmail> createState() => _ForgetPasswordEmailState();
}

class _ForgetPasswordEmailState extends State<ForgetPasswordEmail> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 90.0, right: 90, top: 90, bottom: 90),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColor.appBGColor),
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
                      // const SizedBox(
                      //   height: 100,
                      // ),
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 40),
                          const Text(
                            "Please Your Mail",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
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
                                        backgroundColor: Colors
                                            .red, // Set button color to red
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      child: const Text(
                                        "Send OTP",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    ),
                                    const Text(
                                      "Check Your Mail",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),

                              const SizedBox(
                                width: 10,
                              ),
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
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold),
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
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        text: "Next",
                        onPressed: () {
                          Get.to(const CreateNewPassword(),
                              transition: Transition.rightToLeftWithFade);
                        },
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

class OtpForm extends StatefulWidget {
  const OtpForm({super.key});

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Please Your Mail",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
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
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle OTP send action here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red, // Set button color to red
                      ),
                      child: const Text("Send OTP"),
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Check Your Mail",
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                  Text(
                    "Click Tick Mark",
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
