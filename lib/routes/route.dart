import 'package:frontend_wahyu/pages/walcome.dart';

import 'package:get/get.dart';
import '../pages/login.dart'; // Import untuk login jika ada
import '../pages/dashboard.dart';
// import '../pages/profile_page.dart';
// import '../pages/settings_page.dart';

class AppRoutes {
  static const WELCOME = '/welcome';
  static const LOGIN = '/login';
  static const DASHBOARD = '/dashboard';
  // static const HOME = '/home';
  // static const PROFILE = '/profile';
  // static const SETTINGS = '/settings';

  static final routes = [
    GetPage(
      name: WELCOME,
      page: () => WelcomePage(), 
    ),
    GetPage(
      name: LOGIN,
      page: () => LoginPage(),
      transition: Transition.fadeIn, // ngakalin transisi jadi di halaman welcome tinggal panggil aja moga ga ngaruh pas nyuntik beckend
      transitionDuration: Duration(milliseconds: 800), // ngakalin transisi jadi di halaman welcome tinggal panggil aja moga ga ngaruh pas nyuntik beckend
    ),
       GetPage(
      name: DASHBOARD,
      page: () => DashboardPage(), // Rute untuk DashboardPage
    ),
    // GetPage(
    //   name: HOME,
    //   page: () => HomePage(),
    // ),
    // GetPage(
    //   name: PROFILE,
    //   page: () => ProfilePage(),
    // ),
    // GetPage(
    //   name: SETTINGS,
    //   page: () => SettingsPage(),
    // ),
  ];
}
