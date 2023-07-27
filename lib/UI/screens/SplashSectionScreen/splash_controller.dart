// ignore_for_file: unnecessary_null_comparison, avoid_print

import 'package:assignmentapp/infrastructure/commons/constants/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final Rx<GlobalKey> globalKey = GlobalKey().obs;
  RxDouble containerWidth = 40.0.obs;



  @override
  void onInit() async {
    super.onInit();
      moveToNext();
  }

  moveToNext() async {
    await Future.delayed(2.seconds);
    Get.offAllNamed(RoutesConstants.postDetailScreen);
  }
}
