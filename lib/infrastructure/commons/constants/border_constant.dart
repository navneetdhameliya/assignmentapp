import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BorderConstant {


  //Simple Card BorderConstant
  static const BorderRadiusGeometry allCornerBorderConstant = BorderRadius.all(Radius.circular(24.0));
  static const BorderRadiusGeometry noneBorderConstant = BorderRadius.all(Radius.zero);
  static const BorderRadiusGeometry oneThreeBorderConstant = BorderRadius.only(topLeft: Radius.circular(24.0,), topRight: Radius.circular(0.0,), bottomRight: Radius.circular(24.0,), bottomLeft: Radius.circular(0.0,),);
  static const BorderRadiusGeometry twoFourBorderConstant = BorderRadius.only(topLeft: Radius.circular(0.0,), topRight: Radius.circular(24.0,), bottomRight: Radius.circular(0.0,), bottomLeft: Radius.circular(24.0,),);
  static const BorderRadiusGeometry oneTwoFourBorderConstant = BorderRadius.only(topLeft: Radius.circular(24.0,), topRight: Radius.circular(24.0,), bottomRight: Radius.circular(0.0,), bottomLeft: Radius.circular(24.0,),);
  static const BorderRadiusGeometry oneTwoThreeBorderConstant = BorderRadius.only(topLeft: Radius.circular(24.0,), topRight: Radius.circular(24.0,), bottomRight: Radius.circular(24.0,), bottomLeft: Radius.circular(0.0,),);

  //TwoFolder Card BorderConstant
  static const BorderRadiusGeometry twoFolderAllCornerBorderConstant = BorderRadius.all(Radius.circular(16.0));

  //small all side borderRadius
  static const BorderRadiusGeometry smallAllBorderConstant = BorderRadius.all(Radius.circular(8.0));

  //medium all side borderRadius
  static const BorderRadiusGeometry mediumAllBorderConstant = BorderRadius.all(Radius.circular(12.0));

  //small one side borderRadius
  static const BorderRadiusGeometry smallBottomLeftBorderConstant = BorderRadius.only(bottomLeft: Radius.circular(8.0));
  static const BorderRadiusGeometry smallBottomRightBorderConstant = BorderRadius.only(bottomRight: Radius.circular(8.0));
  static const BorderRadiusGeometry smallTopRightBorderConstant = BorderRadius.only(topRight: Radius.circular(8.0));
  static const BorderRadiusGeometry smallTopLeftBorderConstant = BorderRadius.only(topLeft: Radius.circular(8.0));

  //medium one side borderRadius
  static const BorderRadiusGeometry mediumBottomLeftBorderConstant = BorderRadius.only(bottomLeft: Radius.circular(12.0));
  static const BorderRadiusGeometry mediumBottomRightBorderConstant = BorderRadius.only(bottomRight: Radius.circular(12.0));
  static const BorderRadiusGeometry mediumTopRightBorderConstant = BorderRadius.only(topRight: Radius.circular(12.0));
  static const BorderRadiusGeometry mediumTopLeftBorderConstant = BorderRadius.only(topLeft: Radius.circular(12.0));

  //large one side borderRadius
  static const BorderRadiusGeometry largeBottomLeftBorderConstant = BorderRadius.only(bottomLeft: Radius.circular(16.0));
  static const BorderRadiusGeometry largeBottomRightBorderConstant = BorderRadius.only(bottomRight: Radius.circular(16.0));
  static const BorderRadiusGeometry largeTopRightBorderConstant = BorderRadius.only(topRight: Radius.circular(16.0));
  static const BorderRadiusGeometry largeTopLeftBorderConstant = BorderRadius.only(topLeft: Radius.circular(16.0));
}