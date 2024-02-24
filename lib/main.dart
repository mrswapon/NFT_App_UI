import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nft_app/routes/app_routes.dart';
import 'views/screens/welcome_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(378.39, 787.41),
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          /*title: 'NFT App UI',
          initialRoute: AppRoutes.welcomeScreen,*/
          getPages: AppRoutes.routes,
          home: WelcomeScreen()),
    );
  }
}