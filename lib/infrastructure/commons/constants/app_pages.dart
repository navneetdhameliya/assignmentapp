import 'package:assignmentapp/UI/screens/SplashSectionScreen/splash_binding.dart';
import 'package:assignmentapp/UI/screens/SplashSectionScreen/splash_screen.dart';
import 'package:assignmentapp/infrastructure/commons/constants/app_routes.dart';
import 'package:get/get.dart';



class AppPages {
  static final routes = [
    GetPage(
      name: RoutesConstants.splashScreen,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
  ];
}
