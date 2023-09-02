class CountsHelper {
  String calculateGlobalUnit(dynamic value) {
    late dynamic val;

    if (value.runtimeType is String) {
      val = double.parse(value);
    } else {
      val = value;
    }

    if (val > 0 && val < 999) return "$val";
    if (val > 999 && val <= 999999) {
      return "${val / 1000}K";
    } else if (val > 999999 && val < 1000000000) {
      return "${val / 1000000}M";
    }
    // if(value>9999999&&value<=999999999)
    else {
      return "${val / 1000000000}B";
    }
  }

  String calculateLocalUnit(dynamic value) {
    late dynamic val;

    if (value.runtimeType is String) {
      val = double.parse(value);
    } else {
      val = value;
    }

    if (val > 0 && val < 999) return "$val";

    ///Nine hundred ninety nine     TO    ninety nine thousands Nine hundred ninety nine
    if (val > 999 && val <= 99999) {
      return "${val / 1000} Hazar";
    } else if (val > 99999 && val <= 9999999) {
      return "${val / 100000} Lakh";
    }
    if (value > 9999999 && value <= 999999999) {
      return "${val / 10000000} Crore";
    }
    if (value > 999999999 && value <= 9999999999) {
      {
        return "${val / 1000000000} Arab";
      }
    } else {
      return "${val / 100000000000} Kharab";
    }
  }
}
