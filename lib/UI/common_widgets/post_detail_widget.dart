import 'package:assignmentapp/UI/common_widgets/sized_boxs.dart';
import 'package:assignmentapp/UI/commons/text_widgets/base/headline_body_one_base_widget.dart';
import 'package:assignmentapp/infrastructure/commons/constants/color_constants.dart';
import 'package:assignmentapp/infrastructure/commons/constants/font_constant.dart';
import 'package:flutter/material.dart';

class PostDetailWidget extends StatelessWidget {

  final String? title;
  final String? description;
  final List<String>? hashTagList;
  final bool forComment;

  const PostDetailWidget({super.key, this.title, this.description, this.hashTagList, this.forComment = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(visible: title != null && title!.isNotEmpty,child: forComment ? const SizedBox8Height() : const SizedBox16Height(),),
        Visibility(
          visible: title != null && title!.isNotEmpty,
          child: HeadlineBodyOneBaseWidget(
            title: title,
            titleColor:
            ColorConstants.userTitleColor,
            fontSize: 14.0,
            fontFamily:
            FontConstant.notoSansKRBold,
          ),
        ),
        Visibility(visible: description != null && description!.isNotEmpty,child: forComment ? const SizedBox8Height() : const SizedBox16Height(),),
        Visibility(
          visible: description != null && description!.isNotEmpty,
          child: HeadlineBodyOneBaseWidget(
            title: description,
            titleColor: ColorConstants
                .userDescriptionColor,
            fontSize: 12.0,
            fontFamily:
            FontConstant.notoSansKRMedium,
          ),
        ),
        Visibility(visible: hashTagList != null && hashTagList!.isNotEmpty,child: forComment ? const SizedBox8Height() : const SizedBox16Height(),),
        hashTagList != null && hashTagList!.isNotEmpty ? Wrap(
          runSpacing: 10.0,
          clipBehavior: Clip.hardEdge,
          children: List<Widget>.generate(
            hashTagList!
                .length,
                (index) {
              return Padding(
                padding:
                const EdgeInsets.only(
                    right: 8.0),
                child: Container(
                  height: 24.0,
                  decoration:
                  const ShapeDecoration(
                      shape:
                      RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius
                            .all(
                          Radius.circular(
                            12.0,
                          ),
                        ),
                        side: BorderSide(
                            width: 0.5,
                            color: ColorConstants
                                .hashTagBorderColor),
                      ),
                      color: ColorConstants
                          .textFieldBorderColor),
                  child: Padding(
                    padding: const EdgeInsets
                        .symmetric(
                        horizontal: 12.0),
                    child:
                    HeadlineBodyOneBaseWidget(
                      title:
                      "#${hashTagList!.elementAt(index).toUpperCase()}",
                    ),
                  ),
                ),
              );
            },
          ),
        ) : Container(),
    forComment ? const SizedBox8Height() : const SizedBox16Height(),
      ],
    );
  }
}
