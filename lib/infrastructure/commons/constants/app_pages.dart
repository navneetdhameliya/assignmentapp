import 'package:assignmentapp/UI/screens/PostDetailSectionScreen/post_detail_binding.dart';
import 'package:assignmentapp/UI/screens/PostDetailSectionScreen/post_detail_screen.dart';
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
    GetPage(
      name: RoutesConstants.postDetailScreen,
      page: () => const PostDetailScreen(),
      binding: PostDetailBinding(),
    ),
  ];
}
