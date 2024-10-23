
import 'package:f_test/controller/page_router_builder.dart';
import 'package:f_test/controller/pages/entry_point.dart';
import 'package:f_test/create_new_company/company_login/admin_user.dart';
import 'package:f_test/create_new_company/business_address/business_addrerss.dart';
import 'package:f_test/create_new_company/business_address/info_view/info_view.dart';
import 'package:f_test/create_new_company/business_info.dart/business_info.dart';
import 'package:f_test/create_new_company/company_login/create_new_company.dart';
import 'package:f_test/create_new_company/general_info/general_info.dart';
import 'package:f_test/create_new_company/other_info.dart/other_info.dart';
import 'package:f_test/create_new_company/signature/signature.dart';
import 'package:f_test/create_new_company/vat_tax/vat_tax.dart';
import 'package:go_router/go_router.dart';

final routerConfig = GoRouter(
  initialLocation: '/',
  routes: [
    // GoRoute(
    //   path: '/',
    //   builder: (context, state) => const EntryPoint(child: GeneralInfo(),),
    // ),
     GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        return fadeInRightToLeftTransition(const EntryPoint(child: GeneralInfo()));
      },
    ),
   
    

     GoRoute(
      path: '/sign-in',
      pageBuilder: (context, state) {
        return fadeInRightToLeftTransition(const EntryPoint(child: CreateNewCompany()));
      },
    ),
     

    GoRoute(
      path: '/register',
      pageBuilder: (context, state) {
        return fadeInRightToLeftTransition(const EntryPoint(child: AdminUser()));
      },
    ),

    GoRoute(
      path: '/generalinfo',
      pageBuilder: (context, state) {
        return fadeInRightToLeftTransition(const EntryPoint(child: GeneralInfo()));
      },
    ),

    

    GoRoute(
      path: '/businessinfo',
      pageBuilder: (context, state) {
        return fadeInRightToLeftTransition(const EntryPoint(child: BusinessInfo()));
      },
    ),

    // GoRoute(
    //   path: '/BussinessAddress',
    //   builder: (context, state) => const EntryPoint(child: BusinessAddrerss()),
    // ),

    GoRoute(
      path: '/BussinessAddress',
      pageBuilder: (context, state) {
        return fadeInRightToLeftTransition(const EntryPoint(child: BusinessAddrerss()));
      },
    ),

    // GoRoute(
    //   path: '/VatTax',
    //   builder: (context, state) => const EntryPoint(child: VatTax()),
    // ),

    GoRoute(
      path: '/VatTax',
      pageBuilder: (context, state) {
        return fadeInRightToLeftTransition(const EntryPoint(child: VatTax()));
      },
    ),

    // GoRoute(
    //   path: '/LogoSingnature',
    //   builder: (context, state) => const EntryPoint(child: Signature()),
    // ),

    GoRoute(
      path: '/LogoSingnature',
      pageBuilder: (context, state) {
        return fadeInRightToLeftTransition(const EntryPoint(child: Signature()));
      },
    ),

    

    GoRoute(
      path: '/OthersInfo',
      pageBuilder: (context, state) {
        return fadeInRightToLeftTransition(const EntryPoint(child: OtherInfo()));
      },
    ),

    // GoRoute(
    //   path: '/AdminPassword',
    //   builder: (context, state) => const EntryPoint(child: OtherInfo()),
    // ),

    GoRoute(
      path: '/AdminPassword',
      pageBuilder: (context, state) {
        return fadeInRightToLeftTransition(const EntryPoint(child: OtherInfo()));
      },
    ),

    // GoRoute(
    //   path: '/InfoView',
    //   builder: (context, state) => const EntryPoint(child: InfoView()),
    // ),

     GoRoute(
      path: '/InfoView',
      pageBuilder: (context, state) {
        return fadeInRightToLeftTransition(const EntryPoint(child: InfoView()));
      },
    ),
    


    GoRoute(
      path: '/GeneralInfo',
      builder: (context, state) => const EntryPoint(child: GeneralInfo()),
    ),

  ],
);


