// import 'package:flutter/material.dart';

// class SideBarController extends ChangeNotifier {

//   String sideBarValue = '';

//   Future<void> setBarValue (String newValue) async {
//     sideBarValue = newValue;
//     notifyListeners();
//   }
// }

// import 'package:flutter/material.dart';

// class SideBarController extends ChangeNotifier {
//   String _sideBarValue = 'Home';

//   String get sideBarValue => _sideBarValue;

//   Future<void> setBarValue(String newValue) async {
//     _sideBarValue = newValue;
//     notifyListeners();
//   }
// }

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideBarController extends ChangeNotifier {
  String _sideBarValue = 'Home';

  String get sideBarValue => _sideBarValue;

  Future<void> setBarValue(BuildContext context, String newValue) async {
    _sideBarValue = newValue;
    notifyListeners();

    // Navigate to the new route and update the URL
    switch (newValue) {
      case 'Dashboard':
        context.go('/');
        break;
      case 'Home':
        context.go('/');
        break;
      
      case 'generalinfo':
        context.go('/generalinfo');
        break;  
      case 'businessinfo':
        context.go('/businessinfo');
        break;
      case 'BussinessAddress':
        context.go('/BussinessAddress');
        break;
      case 'VatTax':
        context.go('/VatTax');
        break;
      case 'LogoSingnature':
        context.go('/LogoSingnature');
        break;
      case 'OthersInfo':
        context.go('/OthersInfo');
        break;
      case 'AdminPassword':
        context.go('/AdminPassword');
        break;
      case 'InfoView':
        context.go('/InfoView');
        break;
      
      case 'setting':
        context.go('/setting');
        break;

      // Add more cases for other pages as needed
      default:
        context.go('/');
    }
  }
}
