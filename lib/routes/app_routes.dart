import 'package:get/get.dart';
import '../views/screens/NftMarketplaceScreen/nft_marketplace_screen.dart';
import '../views/screens/welcome_screen.dart';

class AppRoutes {
  static const String welcomeScreen = "/welcome_screen.dart";
  static const String nftMarketplaceScreen = "/nft_marketplace_screen.dart";


  static List<GetPage> get routes => [
    GetPage(name: welcomeScreen, page: () => WelcomeScreen()),
    GetPage(name: nftMarketplaceScreen, page: () => NftMarketplaceScreen()),


  ];
}