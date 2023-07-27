
import 'package:assignmentapp/infrastructure/commons/constants/color_constants.dart';
import 'package:assignmentapp/infrastructure/commons/constants/image_constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostImagesWidget extends StatelessWidget {

  final PageController pageController;
  final ValueChanged<int> onImageChanged;
  final List<String> imageList;
  final int activePage;

  const PostImagesWidget({super.key, required this.pageController, required this.onImageChanged, required this.imageList, required this.activePage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 450.0,
      color: ColorConstants.imageContainerColor,
      child: Stack(
        children: [
          PageView.builder(
              controller: pageController,
              onPageChanged: onImageChanged,
              itemCount: imageList.length,
              itemBuilder: (BuildContext context, int index){


                  return CachedNetworkImage(
                    imageUrl: imageList.elementAt(index),
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    placeholder: (context, url) => Center(child: SvgPicture.asset(ImageConstants.imageReplace,width: 48.0, height: 48.0, )),
                    errorWidget: (context, url, error) => Center(child: SvgPicture.asset(ImageConstants.imageReplace,width: 48.0, height: 48.0, )),
                  );
              }
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                  imageList.length,
                      (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: InkWell(
                      onTap: () {
                        pageController.animateToPage(index,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                      child: CircleAvatar(
                        radius: 6,
                        // check if a dot is connected to the current page
                        // if true, give it a different color
                        backgroundColor: activePage == index
                            ? ColorConstants.activePageColor
                            : Colors.white30,
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
