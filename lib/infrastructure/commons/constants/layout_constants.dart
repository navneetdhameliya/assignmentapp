import 'package:flutter/material.dart';

class LayoutConstants {
  //drawer menu

  //container
  static const EdgeInsets containerStandardPadding = EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0);

  static Decoration decoration({required Color color}) {
    return ShapeDecoration(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(5.0), topEnd: Radius.circular(5.0), bottomStart: Radius.circular(5.0), bottomEnd: Radius.circular(5.0)),
      ),
      color: color,
      shadows: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 3.0,
        ),
      ],
    );
  }

  static const standardPadding = EdgeInsets.all(16);

  static const customCreatePostPadding = EdgeInsets.only(left: 16, right: 16, bottom: 60, top: 16);

  static SizedBox standardSpacingVertical = const SizedBox(
    height: 16,
  );
  static SizedBox standardSpacingVertical8 = const SizedBox(
    height: 8,
  );
  static SizedBox standardSpacingVertical32 = const SizedBox(
    height: 36,
  );
  static SizedBox standardSpacingHorizontal = const SizedBox(
    width: 16,
  );
  static SizedBox standardSpacingHorizontal8 = const SizedBox(
    width: 8,
  );
  static SizedBox standardSpacingHorizontal24 = const SizedBox(
    width: 24,
  );

  static Container divider = Container(
    color: Colors.black.withOpacity(0.08),
    height: 1,
  );
}
