import 'package:assignmentapp/infrastructure/commons/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PostShimmer extends StatelessWidget {
  const PostShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: ShapeDecoration(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            color: ColorConstants.white,
            shadows: [
              BoxShadow(
                  color: Colors.black54.withOpacity(0.1), blurRadius: 5.0),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SimpleDemoShimmer(
                        height: 56.0, width: 56.0, isImage: true),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: SizedBox(
                        height: 50.0,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SimpleDemoShimmer(width: 180.0),
                            SizedBox(
                              height: 10.0,
                            ),
                            SimpleDemoShimmer(width: 160.0),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SimpleDemoShimmer(
                        width: MediaQuery.of(context).size.width * 0.70),
                    const SizedBox(height: 10.0),
                    SimpleDemoShimmer(
                        width: MediaQuery.of(context).size.width * 0.70),
                    const SizedBox(height: 10.0),
                    SimpleDemoShimmer(
                        width: MediaQuery.of(context).size.width * 0.70),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}

Column eventLoadingShimmer(BuildContext context) {
  return Column(
    children: [
      Container(
        decoration: ShapeDecoration(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0))),
          color: ColorConstants.white,
          shadows: [
            BoxShadow(
              color: Colors.black54.withOpacity(
                0.1,
              ),
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Shimmer.fromColors(
                    baseColor: Colors.black26,
                    highlightColor: Colors.black12,
                    child: Container(
                      color: Colors.black26,
                      child: Container(
                        height: 56.0,
                        width: 56.0,
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(28.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: SizedBox(
                      height: 50.0,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Shimmer.fromColors(
                            baseColor: Colors.black45,
                            highlightColor: Colors.black12,
                            child: Container(
                              color: Colors.black26,
                              child: const SizedBox(
                                height: 16.0,
                                width: 180.0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Shimmer.fromColors(
                            baseColor: Colors.black26,
                            highlightColor: Colors.black12,
                            child: Container(
                              color: Colors.black26,
                              child: const SizedBox(
                                height: 14.0,
                                width: 160.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Shimmer.fromColors(
                    baseColor: Colors.black26,
                    highlightColor: Colors.black12,
                    child: Container(
                      color: Colors.black26,
                      child: SizedBox(
                        height: 14.0,
                        width: MediaQuery.of(context).size.width * 0.75,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.black26,
                    highlightColor: Colors.black12,
                    child: Container(
                      color: Colors.black26,
                      child: SizedBox(
                        height: 14.0,
                        width: MediaQuery.of(context).size.width * 0.72,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.black26,
                    highlightColor: Colors.black12,
                    child: Container(
                      color: Colors.black26,
                      child: SizedBox(
                        height: 14.0,
                        width: MediaQuery.of(context).size.width * 0.70,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 20.0,
      ),
    ],
  );
}

class SimpleDemoShimmer extends StatelessWidget {
  const SimpleDemoShimmer(
      {Key? key,
      this.height = 14.0,
      this.width = 0.70,
      this.isImage = false,
      this.padding = EdgeInsets.zero})
      : super(key: key);
  final double height;
  final double width;
  final bool isImage;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Shimmer.fromColors(
        baseColor: Colors.black26,
        highlightColor: Colors.black12,
        child: Container(
          child: SizedBox(
            height: height,
            width: width,
          ),
          decoration: isImage
              ? BoxDecoration(
                  color: Colors.black26,
                  shape: BoxShape.circle,
                )
              : const BoxDecoration(color: Colors.black26),
        ),
      ),
    );
    ;
  }
}
