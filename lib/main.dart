import 'package:f_test/controller/controller/side_bar_controller.dart';
import 'package:f_test/controller/shared/navigation/routes.dart';
import 'package:f_test/create_new_company/business_address/business_addrerss.dart';
import 'package:f_test/create_new_company/business_address/info_view/info_view.dart';
import 'package:f_test/create_new_company/business_info.dart/business_info.dart';
import 'package:f_test/create_new_company/company_login/create_new_company.dart';
import 'package:f_test/create_new_company/general_info/general_info.dart';
import 'package:f_test/create_new_company/other_info.dart/other_info.dart';
import 'package:f_test/create_new_company/signature/signature.dart';
import 'package:f_test/create_new_company/vat_tax/vat_tax.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (context)=>SideBarController())
      ],
      child:

      //left
      GetMaterialApp(
        title: 'Commerce Book',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,

        ),
        //home: GeneralInfo(),
        //home: BusinessInfo(),
        //home: const BusinessAddrerss(),
       //home: const VatTax(),
        //home: const Signature(),
        //home: const OtherInfo(),
        home: CreateNewCompany(),
      ),


    //   MaterialApp.router(
    //   routerConfig: routerConfig,
    //   title: 'Commerce Book',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
    // ),
   );
  }
}



