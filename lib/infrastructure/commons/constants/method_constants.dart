
// ignore_for_file: prefer_interpolation_to_compose_strings

import 'dart:io' as io;

import 'package:assignmentapp/infrastructure/commons/constants/app_constants.dart';
import 'package:get/get.dart';



class MethodConstants {

  static Future<bool> isInternetAvailable() async {
    try {
      final result = await io.InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      } else {
        return false;
      }
    } on io.SocketException catch (_) {
      return false;
    }
  }

  static String getTimeDifference(String timeStamp) {
    return DateTime.fromMillisecondsSinceEpoch(
        DateTime.now()
            .millisecondsSinceEpoch).difference(DateTime.fromMillisecondsSinceEpoch(int.parse(timeStamp)))
        .inDays
        .toString() +
    AppConstants
        .daysAgoText
        .tr;
  }

}