import 'package:f_test/utils/string.dart';
import 'package:f_test/widgets/bottom_four_text.dart';
import 'package:f_test/widgets/custom_button.dart';
import 'package:f_test/widgets/custom_text_edit_form.dart';
import 'package:f_test/widgets/label_with_asterisk.dart';
import 'package:flutter/material.dart';

class InfoView extends StatefulWidget {
  const InfoView({super.key});

  @override
  State<InfoView> createState() => _InfoViewState();
}

class _InfoViewState extends State<InfoView> {
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
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    text: "Switch Company",
                    onPressed: () {
                      //Get.to(const AdminUser());
                    },
                    color: const Color(0xff82c4f8),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CustomButton(
                    text: "Create New Company",
                    onPressed: () {
                      //Get.to(const AdminUser());
                    },
                    color: const Color(0xff82c4f8),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 150,
                  width: 220,
                  child: Image.asset("assets/image/logo3.png"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                  child: const ListTile(
                    leading: CircleAvatar(),
                    title: Text("Md Jasim Uddin"),
                    subtitle: Text("Admin"),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const LabelWithAsterisk(labelText: AppString.password),
              const CustomTextFormField(hintText: AppString.password),
              const SizedBox(height: 15),
              CustomButton(
                text: "login",
                onPressed: () {
                  //Get.to(const AdminUser());
                },
                color: const Color(0xff82c4f8),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Remember",
                        style: TextStyle(color: Colors.blue),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forget Password ?",
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
              const SizedBox(height: 50),
              const BottomFourText(),
            ],
          ),
        ),
      ),
    );
  }
}
