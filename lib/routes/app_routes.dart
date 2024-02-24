import 'package:get/get.dart';

import '../views/screens/welcome_screen.dart';

class AppRoutes {
  static const String welcomeScreen = "/welcome_screen.dart";
  static const String homeScreen = "/home_screen.dart";


  static List<GetPage> get routes => [
    GetPage(name: homeScreen, page: () => WelcomeScreen()),
    //GetPage(name: homeScreen, page: () => HomeScreen()),

  ];
}