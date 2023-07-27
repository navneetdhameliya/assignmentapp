import 'package:assignmentapp/UI/common_widgets/follow_button.dart';
import 'package:assignmentapp/UI/common_widgets/like_comment_widget.dart';
import 'package:assignmentapp/UI/common_widgets/post_detail_widget.dart';
import 'package:assignmentapp/UI/common_widgets/post_images_widget.dart';
import 'package:assignmentapp/UI/common_widgets/post_user_detail_widget.dart';
import 'package:assignmentapp/UI/common_widgets/sized_boxs.dart';
import 'package:assignmentapp/UI/common_widgets/square_small_button.dart';
import 'package:assignmentapp/UI/common_widgets/user_profile_widget.dart';
import 'package:assignmentapp/UI/commons/behaviour/behaviour.dart';
import 'package:assignmentapp/UI/commons/text_field_widget/leave_comment_text_field.dart';
import 'package:assignmentapp/UI/commons/text_widgets/base/headline_body_one_base_widget.dart';
import 'package:assignmentapp/UI/screens/PostDetailSectionScreen/post_detail_controller.dart';
import 'package:assignmentapp/infrastructure/commons/constants/app_constants.dart';
import 'package:assignmentapp/infrastructure/commons/constants/color_constants.dart';
import 'package:assignmentapp/infrastructure/commons/constants/font_constant.dart';
import 'package:assignmentapp/infrastructure/commons/constants/image_constants.dart';
import 'package:assignmentapp/infrastructure/models/responses/post_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PostDetailScreen extends GetView<PostDetailController> {
  const PostDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SafeArea(
        top: true,
        child: Scaffold(
          appBar: null,
          backgroundColor: ColorConstants.white,
          body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 48.0,
                        child: Row(
                          children: [
                            SquareSmallButton(
                              dimension: 48.0,
                              imagePath: ImageConstants.backArrow,
                              onButtonTap: () {
                                Navigator.of(context).pop();
                              },
                              iconColor: ColorConstants.backArrowColor,
                            ),
                            Expanded(
                              child: Center(
                                child: HeadlineBodyOneBaseWidget(
                                  title: controller.appBarTitle.value,
                                  titleColor: ColorConstants.appBarTitleColor,
                                  fontSize: 16.0,
                                  fontFamily: FontConstant.notoSansKRBold,
                                ),
                              ),
                            ),
                            SquareSmallButton(
                              dimension: 48.0,
                              imagePath: ImageConstants.notificationBell,
                              onButtonTap: () {
                                controller.notificationOn.value = !(controller.notificationOn.value);
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Notification ${controller.notificationOn.value ? "on" : "off"}")));
                              },
                              iconColor: controller.notificationOn.value
                                  ? ColorConstants.backArrowColor
                                  : ColorConstants.offNotificationColor,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      controller.loading.value
                          ? const CircularProgressIndicator()
                          : Expanded(
                              child: ScrollConfiguration(
                                behavior: MyBehavior(),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0,
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 36.0,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  PostUserDetailWidget(
                                                    userData: controller.postDetailModel.value.postedUserData!,
                                                    timeStamp: controller.postDetailModel.value.postData!.postTimeStamp!,
                                                  ),
                                                  FollowButton(
                                                    onFollowButtonTap: () {},
                                                  ),
                                                ],
                                              ),
                                            ),
                                            PostDetailWidget(
                                              title: controller.postDetailModel.value.postData!.postTitle,
                                              description: controller.postDetailModel.value.postData!.postDescription,
                                              hashTagList: controller.postDetailModel.value.postData!.hashtagList,
                                            ),
                                          ],
                                        ),
                                      ),
                                      PostImagesWidget(
                                        pageController: controller.imagePageController.value,
                                        onImageChanged: (int index) {
                                          controller.activePage.value = index;
                                        },
                                        imageList: controller.postDetailModel.value.postData!.imagesList!,
                                        activePage: controller.activePage.value,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 56.0,
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                                color: ColorConstants
                                                    .textFieldBorderColor,
                                                width: 2.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              LikeCommentWidget(
                                                liked: controller.liked.value,
                                                onLikeTap: () {
                                                  if (controller.liked.value) {
                                                    controller.liked.value = false;
                                                    controller.likeCount.value--;
                                                  } else {
                                                    controller.liked.value = true;
                                                    controller.likeCount.value++;
                                                  }
                                                },
                                                commentCount: controller.postDetailModel.value.postData!.commentCount!,
                                                likeCount: controller.likeCount.value,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 32.0,
                                                    height: 32.0,
                                                    child: SvgPicture.asset(
                                                      ImageConstants.savePostIcon,
                                                    ),
                                                  ),
                                                  const SizedBox8Width(),
                                                  SizedBox(
                                                    width: 32.0,
                                                    height: 32.0,
                                                    child: SvgPicture.asset(
                                                        ImageConstants.moreHorizontalIcon),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          children: List<Widget>.generate(
                                            controller.postDetailModel.value.postData!.commentsList!.length,
                                            (index) {
                                              CommentsList commentList = controller.postDetailModel.value.postData!.commentsList!.elementAt(index);
                                              return Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  UserProfileWidget(
                                                    dimension: 36.0,
                                                    imagePath: commentList.commentUserData!.userProfile!,
                                                  ),
                                                  const SizedBox8Width(),
                                                  Expanded(
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          children: [
                                                            Expanded(
                                                              child: PostUserDetailWidget(
                                                                userData: commentList.commentUserData!,
                                                                timeStamp: commentList.commentTime!,
                                                                profileWidgetCombine: false,
                                                                commentOrReply: false,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 32.0,
                                                              height: 32.0,
                                                              child: SvgPicture.asset(
                                                                ImageConstants.moreHorizontalIcon,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        PostDetailWidget(
                                                          description: commentList.commentDescription,
                                                          forComment: true,
                                                        ),
                                                        LikeCommentWidget(
                                                          liked: controller.commentLiked.value,
                                                          onLikeTap: () {
                                                            if (controller.commentLiked.value) {
                                                              controller.commentLiked.value = false;
                                                              commentList.commentLikeCount = (int.parse(commentList.commentLikeCount!) - 1).toString();
                                                            } else {
                                                              controller.commentLiked.value = true;
                                                              commentList.commentLikeCount = (int.parse(commentList.commentLikeCount!) + 1).toString();
                                                            }
                                                          },
                                                          commentCount: int.parse(commentList.commentReplyCount!),
                                                          likeCount: int.parse(commentList.commentLikeCount!,
                                                          ),
                                                        ),
                                                        const SizedBox8Height(),
                                                        Column(
                                                          children: List<Widget>.generate(commentList.replyList!.length,
                                                              (index1) {
                                                            ReplyList replyList = commentList.replyList!.elementAt(index1);

                                                            return Row(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                              children: [
                                                                UserProfileWidget(
                                                                  dimension: 36.0,
                                                                  imagePath: replyList.replyUserData!.userProfile!,
                                                                ),
                                                                const SizedBox8Width(),
                                                                Expanded(
                                                                  child: Column(
                                                                    children: [
                                                                      Row(
                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                        children: [
                                                                          Expanded(
                                                                            child: PostUserDetailWidget(
                                                                              userData: replyList.replyUserData!,
                                                                              timeStamp: replyList.replyTime!,
                                                                              profileWidgetCombine: false,
                                                                              commentOrReply: false,
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            width: 32.0,
                                                                            height: 32.0,
                                                                            child: SvgPicture.asset(
                                                                              ImageConstants.moreHorizontalIcon,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      PostDetailWidget(
                                                                        description:
                                                                            replyList.replyText,
                                                                        forComment:
                                                                            true,
                                                                      ),
                                                                      LikeCommentWidget(
                                                                        liked: controller.replyLiked.value,
                                                                        onLikeTap: () {
                                                                          if (controller.replyLiked.value) {
                                                                            controller.replyLiked.value = false;
                                                                            replyList.replyLikeCount = (int.parse(replyList.replyLikeCount!) - 1).toString();
                                                                          } else {
                                                                            controller.replyLiked.value = true;
                                                                            replyList.replyLikeCount = (int.parse(replyList.replyLikeCount!) + 1).toString();
                                                                          }
                                                                        },
                                                                        likeCount: int.parse(
                                                                          replyList.replyLikeCount!,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            );
                                                          }),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 42.0,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: ColorConstants.textFieldBorderColor,
                      ),
                    ),
                    color: ColorConstants.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SquareSmallButton(
                        dimension: 42.0,
                        imagePath: ImageConstants.imageReplace,
                        iconColor: ColorConstants.imageReplaceIconColor,
                        paddingDimension: 8.0,
                      ),
                       Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Center(
                            child: LeaveCommentTextField(
                              textEditingController: controller.commentFieldController.value,
                              focusNode: controller.focusNode.value,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: ColorConstants.transparent,
                        focusColor: ColorConstants.transparent,
                        highlightColor: ColorConstants.transparent,
                        hoverColor: ColorConstants.transparent,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: HeadlineBodyOneBaseWidget(
                            title: AppConstants.registrationText.tr,
                            titleColor: ColorConstants.registrationTextColor,
                            fontSize: 12.0,
                            fontFamily: FontConstant.notoSansKRMedium,
                          ),
                        ),
                        onTap: () {
                          controller.commentFieldController.value.text = "";
                          controller.focusNode.value.unfocus();
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
