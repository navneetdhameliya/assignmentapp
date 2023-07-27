extension StringExtension on String {
  bool isEmptyStringExtension() {
    return isEmpty;
  }

  bool isUrl() {
    if (!isEmptyStringExtension()) {
      return startsWith('http://') || startsWith('https://');
    }
    return false;
  }

  bool isValidUrl() {
    String pattern =
        r'(http|https)://[\w-]+(\.[\w-]+)+([\w.,@?^=%&amp;:/~+#-]*[\w@?^=%&amp;/~+#-])?';
    RegExp regExp = RegExp(pattern);
    if (isNotEmpty) {
      if (!regExp.hasMatch(this)) {
        return false;
      }
    } else {
      return true;
    }
    return true;
  }
}
