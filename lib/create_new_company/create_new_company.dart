import 'package:dotted_line/dotted_line.dart';
import 'package:f_test/create_new_company/general_info.dart';
import 'package:f_test/create_new_company/create_new_company_password.dart';
import 'package:f_test/create_new_company/forget_password/forget_password_email.dart';
import 'package:f_test/utils/color.dart';
import 'package:f_test/utils/string.dart';
import 'package:f_test/widgets/custom_button.dart';
import 'package:f_test/widgets/custom_icon_text.dart';
import 'package:f_test/widgets/custom_text_edit_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CreateNewCompany extends StatelessWidget {
  const CreateNewCompany({super.key});

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
            
               
                CustomButton(text: "Create New Company                      ", icon: Icons.add, onPressed: (){Get.to(const GeneralInfo());}, color: Color(0xff2196f3),),
              const SizedBox(height: 10,),
            
            
              const Text(AppString.appAllreadyHaveAccount),
              const DottedLine(),

              const SizedBox(height: 10,),
            
              const Align(
                alignment: Alignment.topLeft,
                child: const Text(AppString.companyEmail)),
              // const  CustomTextEditForm(),
              
                    


              const CustomTextFormField(hintText: "Company E-mail",),
            
              const SizedBox(height: 10,),
            
              

                CustomButton(text: "Next", onPressed: (){
                  Get.to(const CreateNewCompanyPassword());
                }, color: const Color(0xff82c4f8),),

            
              const SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  Get.to(const ForgetPasswordEmail());
                },
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text(AppString.forgetPassword)),
              ),


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