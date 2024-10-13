 




import 'package:flutter/material.dart';

import 'package:dotted_line/dotted_line.dart';
import 'package:f_test/create_new_company/admin_user.dart';
import 'package:f_test/utils/color.dart';
import 'package:f_test/utils/string.dart';
import 'package:f_test/widgets/custom_button.dart';
import 'package:f_test/widgets/custom_icon_text.dart';
import 'package:f_test/widgets/custom_text_edit_form.dart';
import 'package:flutter/material.dart';
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
    return   Scaffold(
       backgroundColor: AppColor.appBGColor,
      body: Row(
        children: [

          Expanded(child: Padding(
            padding: const EdgeInsets.only(left: 40.0, top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                const SizedBox(height: 10,),

                Row(
                  children: [
                     
                     SizedBox(
                      height: 50,
                      width: 50,
                    
                      child:  Image.asset("assets/image/cloudload.png"),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                    
                      child:  Image.asset("assets/image/shopping.jpg"),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                    
                      child:  Image.asset("assets/image/visacard.png"),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                    
                      child:  Image.asset("assets/image/mastercard.png"),
                    ),
                  ],
                ),

                const SizedBox(height: 10,),

               
                
                CustomIconText(icon: Icons.thumb_up ,text: AppString.cloudBaseSoftware,),
                CustomIconText(icon: Icons.thumb_up, text: AppString.webApp,),
                CustomIconText(icon: Icons.thumb_up, text: AppString.desktopApp),
                CustomIconText(icon: Icons.thumb_up, text: AppString.ios),
                CustomIconText(icon: Icons.thumb_up, text: AppString.androidApp), 

                const SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    children: [
                       CustomIconText(icon: Icons.album, text: AppString.androidApp),
                       CustomIconText(icon: Icons.album, text: AppString.inventorybilling),
                       CustomIconText(icon: Icons.album, text: AppString.pos),
                       CustomIconText(icon: Icons.album, text: AppString.manufacturing),
                       CustomIconText(icon: Icons.album, text: AppString.onlineStore),
                       CustomIconText(icon: Icons.album, text: AppString.marketPlace),
                       CustomIconText(icon: Icons.album, text: AppString.payroll),
                       CustomIconText(icon: Icons.album, text: AppString.crm),
                       CustomIconText(icon: Icons.album, text: AppString.paymentGateway),
                       CustomIconText(icon: Icons.album, text: AppString.multiuserAccess),
                       CustomIconText(icon: Icons.album, text: AppString.companyPortfoli),
                    ],
                  ),
                ),

                const SizedBox(height: 30,),

                SizedBox(
                      height: 150,
                      width: 220,
                    
                      child:  Image.asset("assets/image/sublogo.png"),
                    ),
                                 

            
               ],
            ),
          )),

          Expanded(child: Padding(
            padding: const EdgeInsets.only(right: 60.0),
            child: Column(
              children: [
                   const SizedBox(height: 100,),
              Image.asset("assets/image/banklogo.PNG"),
            
              const SizedBox(height: 20,),
            
               
                CustomButton(text: "Create New Company                      ", icon: Icons.add, onPressed: (){}, color: const Color(0xff2196f3),),
              
            
            
              



                













 


            
              const SizedBox(height: 10,),
              

                CustomButton(text: "Next", onPressed: (){
                 
                }, color: const Color(0xff82c4f8),),

            
              const SizedBox(height: 10,),
              


                const SizedBox(height: 120,),

                Row(children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.abc)),
                    const SizedBox(width: 5,),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.abc)),
                    const SizedBox(width: 5,),

                    IconButton(onPressed: (){}, icon: const Icon(Icons.abc)),
                    const SizedBox(width: 5,),

                    IconButton(onPressed: (){}, icon: const Icon(Icons.abc)),

                    const Spacer(),

                    IconButton(onPressed: (){}, icon: const Icon(Icons.abc)),
                ],)
              ],
            ),
          ))
      ]),
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
 
