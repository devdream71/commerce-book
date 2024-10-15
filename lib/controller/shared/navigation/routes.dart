
import 'package:f_test/controller/pages/ataglance/ataglance.dart';
import 'package:f_test/controller/pages/authentication/register_page.dart';
import 'package:f_test/controller/pages/authentication/sign_in_page.dart';
import 'package:f_test/controller/pages/dashboard/dashboard_page.dart';
import 'package:f_test/controller/pages/entry_point.dart';
import 'package:f_test/create_new_company/admin_user.dart';
import 'package:f_test/create_new_company/business_address/business_addrerss.dart';
import 'package:f_test/create_new_company/business_address/info_view/info_view.dart';
import 'package:f_test/create_new_company/business_info.dart/business_info.dart';
import 'package:f_test/create_new_company/create_new_company.dart';
import 'package:f_test/create_new_company/general_info.dart';
import 'package:f_test/create_new_company/other_info.dart/other_info.dart';
import 'package:f_test/create_new_company/signature/signature.dart';
import 'package:f_test/create_new_company/vat_tax/vat_tax.dart';
import 'package:go_router/go_router.dart';

final routerConfig = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const EntryPoint(child: GeneralInfo()),
    ),
    GoRoute(
      path: '/sign-in',
      builder: (context, state) => const CreateNewCompany(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const AdminUser(), 
    ),

     
    GoRoute(
      path: '/generalinfo',
      builder: (context, state) => const EntryPoint(child: GeneralInfo()),
    ),

    GoRoute(
      path: '/businessinfo',
      builder: (context, state) => const EntryPoint(child: BusinessInfo()),
    ),

    GoRoute(
      path: '/BussinessAddress',
      builder: (context, state) => const EntryPoint(child: BusinessAddrerss()),
    ),

    GoRoute(
      path: '/VatTax',
      builder: (context, state) => const EntryPoint(child: VatTax()),
    ),

    GoRoute(
      path: '/LogoSingnature',
      builder: (context, state) => const EntryPoint(child: Signature()),
    ),

    GoRoute(
      path: '/OthersInfo',
      builder: (context, state) => const EntryPoint(child: OtherInfo()),
    ),

    GoRoute(
      path: '/AdminPassword',
      builder: (context, state) => const EntryPoint(child: OtherInfo()),
    ),

    GoRoute(
      path: '/InfoView',
      builder: (context, state) => const EntryPoint(child: InfoView()),
    ),


    GoRoute(
      path: '/GeneralInfo',
      builder: (context, state) => const EntryPoint(child: GeneralInfo()),
    ),

  ],
);


