
// ignore_for_file: prefer_interpolation_to_compose_strings

import 'dart:io' as io;



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

}