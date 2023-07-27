import 'package:assignmentapp/UI/screens/SplashSectionScreen/splash_controller.dart';
import 'package:assignmentapp/infrastructure/commons/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () =>  Scaffold(
        appBar: null,
        backgroundColor: ColorConstants.white,
        body: Center(
          child: SizedBox(
            width: controller.containerWidth.value,
            height: 40.0,
            child: const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
