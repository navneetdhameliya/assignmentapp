import 'package:assignmentapp/infrastructure/commons/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SquareSmallButton extends StatelessWidget {
  const SquareSmallButton({super.key, required this.dimension, required this.imagePath, this.onButtonTap, required this.iconColor,  this.paddingDimension = 0.0});

  final double dimension;
  final double paddingDimension;
  final String imagePath;
  final Color iconColor;
  final GestureTapCallback? onButtonTap;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return InkWell(
     onTap: onButtonTap,
     splashColor: ColorConstants.transparent,
     focusColor: ColorConstants.transparent,
     highlightColor: ColorConstants.transparent,
     hoverColor: ColorConstants.transparent,
     child: SizedBox(
       width: dimension,
       height: dimension,
       child: Padding(
         padding: EdgeInsets.all(paddingDimension),
         child: Center(
           child: SvgPicture.asset(imagePath, color: iconColor,),
         ),
       ),
     ),
   );
  }

}