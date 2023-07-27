import 'package:flutter/material.dart';

class UserProfileWidget extends StatelessWidget {
  final double dimension;
  final String imagePath;
  const UserProfileWidget({super.key, required this.dimension, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dimension,
      height: dimension,
      decoration: ShapeDecoration(
          shape:
           RoundedRectangleBorder(
            borderRadius:
            BorderRadius.all(
              Radius.circular(
                dimension / 2,
              ),
            ),
          ),
          image: DecorationImage(image: AssetImage(imagePath))
      ),
    );
  }
}
