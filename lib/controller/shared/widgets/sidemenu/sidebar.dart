
import 'package:f_test/controller/controller/side_bar_controller.dart';
import 'package:f_test/controller/pages/dashboard/widgets/theme_tabs.dart';
import 'package:f_test/controller/responsive.dart';
import 'package:f_test/controller/shared/constants/defaults.dart';
import 'package:f_test/controller/shared/constants/ghaps.dart';
import 'package:f_test/controller/shared/widgets/sidemenu/customer_info.dart';
import 'package:f_test/controller/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../constants/config.dart';
import 'menu_tile.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // width: Responsive.isMobile(context) ? double.infinity : null,
      // width: MediaQuery.of(context).size.width < 1300 ? 260 : null,
      child: SafeArea(
        child: Consumer<SideBarController>(builder: (context, side, child) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (Responsive.isMobile(context))
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppDefaults.padding,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon:
                              SvgPicture.asset('assets/icons/close_filled.svg'),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppDefaults.padding,
                        vertical: AppDefaults.padding * 1.5,
                      ),
                      child: SvgPicture.asset(AppConfig.logo),
                    ),
                  ],
                ),
                const Divider(),
                gapH16,
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppDefaults.padding,
                    ),
                    child: ListView(
                      children: [
                        // MenuTile(
                        //   isActive: true,
                        //   title: "Home",
                        //   activeIconSrc: "assets/icons/home_filled.svg",
                        //   inactiveIconSrc: "assets/icons/home_light.svg",
                        //   onPressed: () {
                        //     //side.setBarValue('Home');
                        //     Provider.of<SideBarController>(context,
                        //             listen: false)
                        //         .setBarValue(context, 'Dashboard');
                        //   },
                        // ),
                        
                         MenuTile(
                          isActive: false,
                          title: "General Info",
                          activeIconSrc: "assets/icons/home_filled.svg",
                          inactiveIconSrc: "assets/icons/home_light.svg",
                          onPressed: () {
                            //side.setBarValue('Home');
                            Provider.of<SideBarController>(context,
                                    listen: false)
                                .setBarValue(context, 'generalinfo');
                          },
                        ),
                         MenuTile(
                          isActive: false,
                          title: "Business Info",
                          activeIconSrc: "assets/icons/info.svg",
                          inactiveIconSrc: "assets/icons/info.svg",
                          onPressed: () {
                            //side.setBarValue('Home');
                            Provider.of<SideBarController>(context,
                                    listen: false)
                                .setBarValue(context, 'businessinfo');
                          },
                        ),
                         MenuTile(
                          isActive: false,
                          title: "Bussiness Address",
                          activeIconSrc: "assets/icons/home_filled.svg",
                          inactiveIconSrc: "assets/icons/home_light.svg",
                          onPressed: () {
                            //side.setBarValue('Home');
                            Provider.of<SideBarController>(context,
                                    listen: false)
                                .setBarValue(context, 'BussinessAddress');
                          },
                        ),
                        MenuTile(
                          isActive: false,
                          title: "Vat Tax Info",
                          activeIconSrc: "assets/icons/home_filled.svg",
                          inactiveIconSrc: "assets/icons/home_light.svg",
                          onPressed: () {
                            //side.setBarValue('Home');
                            Provider.of<SideBarController>(context,
                                    listen: false)
                                .setBarValue(context, 'VatTax');
                          },
                        ),
                        MenuTile(
                          isActive: false,
                          title: "Logo and Singnature",
                          activeIconSrc: "assets/icons/home_filled.svg",
                          inactiveIconSrc: "assets/icons/home_light.svg",
                          onPressed: () {
                            //side.setBarValue('Home');
                            Provider.of<SideBarController>(context,
                                    listen: false)
                                .setBarValue(context, 'LogoSingnature');
                          },
                        ),
                        MenuTile(
                          isActive: false,
                          title: "Others Info",
                          activeIconSrc: "assets/icons/home_filled.svg",
                          inactiveIconSrc: "assets/icons/home_light.svg",
                          onPressed: () {
                            //side.setBarValue('Home');
                            Provider.of<SideBarController>(context,
                                    listen: false)
                                .setBarValue(context, 'OthersInfo');
                          },
                        ),

                        MenuTile(
                          isActive: false,
                          title: "Admin and Password",
                          activeIconSrc: "assets/icons/home_filled.svg",
                          inactiveIconSrc: "assets/icons/home_light.svg",
                          onPressed: () {
                            //side.setBarValue('Home');
                            Provider.of<SideBarController>(context,
                                    listen: false)
                                .setBarValue(context, 'AdminPassword');
                          },
                        ),
                        MenuTile(
                          isActive: false,
                          title: "Info View",
                          activeIconSrc: "assets/icons/home_filled.svg",
                          inactiveIconSrc: "assets/icons/home_light.svg",
                          onPressed: () {
                            //side.setBarValue('Home');
                            Provider.of<SideBarController>(context,
                                    listen: false)
                                .setBarValue(context, 'InfoView');
                          },
                        ),
                       
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(AppDefaults.padding),
                  child: Column(
                    children: [
                      if (Responsive.isMobile(context))
                        const CustomerInfo(
                          name: 'Tran Mau Tri Tam',
                          designation: 'Visual Designer',
                          imageSrc:
                              'https://cdn.create.vista.com/api/media/small/339818716/stock-photo-doubtful-hispanic-man-looking-with-disbelief-expression',
                        ),
                      gapH8,
                      const Divider(),
                      gapH8,
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/help_light.svg',
                            height: 24,
                            width: 24,
                            colorFilter: const ColorFilter.mode(
                              AppColors.textLight,
                              BlendMode.srcIn,
                            ),
                          ),
                          gapW8,
                          // Text(
                          //   'Help & getting started',
                          //   style: Theme.of(context)
                          //       .textTheme
                          //       .labelMedium
                          //       ?.copyWith(fontWeight: FontWeight.w600),
                          // ),
                          const Spacer(),
                          Chip(
                            backgroundColor: AppColors.secondaryLavender,
                            side: BorderSide.none,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 0.5),
                            label: Text(
                              "8",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                      gapH20,
                      const ThemeTabs(),
                      gapH8,
                    ],
                  ),
                )
              ]);
        }),
      ),
    );
  }
}
        
  
 











// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:dashboard/controller/side_bar_controller.dart';

// class Sidebar extends StatelessWidget {
//   const Sidebar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         children: [
//           ListTile(
//             title: const Text('Dashboard'),
//             onTap: () {
//               Provider.of<SideBarController>(context, listen: false)
//                   .setBarValue(context, 'Dashboard');
//             },
//           ),
//           ListTile(
//             title: const Text('At a Glance'),
//             onTap: () {
//               Provider.of<SideBarController>(context, listen: false)
//                   .setBarValue(context, 'atAGlancet');
//             },
//           ),
//           ListTile(
//             title: const Text('Governing Body'),
//             onTap: () {
//               Provider.of<SideBarController>(context, listen: false)
//                   .setBarValue(context, 'govermentBody');
//             },
//           ),
//           // Add more navigation items as needed
//         ],
//       ),
//     );
//   }
// }


 
 