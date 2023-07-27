import 'dart:convert';
import 'dart:developer';

import 'package:assignmentapp/infrastructure/commons/constants/app_constants.dart';
import 'package:assignmentapp/infrastructure/models/responses/post_detail_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class PostDetailController extends GetxController {
  RxDouble containerWidth = 40.0.obs;
  RxString appBarTitle = AppConstants.postDetailScreenTitle.tr.obs;
  RxBool notificationOn = false.obs;
  Rx<PostDetailModel> postDetailModel = PostDetailModel().obs;
  RxBool loading = true.obs;
  Rx<PageController> imagePageController = PageController().obs;
  RxInt activePage = 0.obs;
  RxBool liked = false.obs;
  RxInt likeCount = 0.obs;
  RxBool commentLiked = false.obs;
  RxBool replyLiked = false.obs;
  Rx<TextEditingController> commentFieldController = TextEditingController().obs;
  Rx<FocusNode> focusNode = FocusNode().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    loadPostDetailModel();
    imagePageController.value = PageController(initialPage: 0);

  }

  Future<void> loadPostDetailModel() async {

    String jsonContent = await rootBundle
        .loadString("assets/jsons/post_data.json");
    log("json:$jsonContent");

    postDetailModel.value = postDetailModelFromJson(jsonContent);
    likeCount.value = postDetailModel.value.postData!.likeCount!;
    loading.value = false;

  }

}