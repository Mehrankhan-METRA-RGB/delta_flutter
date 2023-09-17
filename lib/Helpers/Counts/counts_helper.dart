class CountsHelper {
  String shortSINumeral(dynamic value) {
    late dynamic val;

    if (value.runtimeType is String) {
      val = double.parse(value);
    } else {
      val = value;
    }

    if (val >= 0 && val < 999) return "$val";
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

  String longSiNumeral(num numericValue) {
    if (numericValue >= 1e12) {
      return "${numericValue ~/ 1e12} Trillion ${longSiNumeral(numericValue % 1e12)}";
    } else if (numericValue >= 1e9) {
      return "${numericValue ~/ 1e9} Billion ${longSiNumeral(numericValue % 1e9)}";
    } else if (numericValue >= 1e6) {
      return "${numericValue ~/ 1e6} Million ${longSiNumeral(numericValue % 1e6)}";
    } else if (numericValue >= 1e3) {
      return "${numericValue ~/ 1e3} Thousand ${longSiNumeral(numericValue % 1e3)}";
    } else {
      return numericValue.toString();
    }
  }

  String shortIndianNumeral(dynamic value) {
    late dynamic val;

    if (value.runtimeType is String) {
      val = double.parse(value);
    } else {
      val = value;
    }

    if (val >= 0 && val < 999) return "$val";

    if (val > 999 && val <= 99999) {
      return "${val / 1000} thousand";
    } else if (val > 99999 && val <= 9999999) {
      return "${val / 100000} lakh";
    }
    if (value > 9999999 && value <= 999999999) {
      return "${val / 10000000} crore";
    }
    if (value > 999999999 && value <= 9999999999) {
      {
        return "${val / 1000000000} Arab";
      }
    } else {
      return "${val / 100000000000} Kharab";
    }
  }

  String longIndianNumeral(num numericValue) {
    if (numericValue >= 100000000000) {
      return "${numericValue ~/ 100000000000} Kharab ${longIndianNumeral(numericValue % 100000000000)}";
    } else if (numericValue >= 1000000000) {
      return "${numericValue ~/ 1000000000} Arab ${longIndianNumeral(numericValue % 1000000000)}";
    } else if (numericValue >= 10000000) {
      return "${numericValue ~/ 10000000} crore ${longIndianNumeral(numericValue % 10000000)}";
    } else if (numericValue >= 100000) {
      return "${numericValue ~/ 100000} lakh ${longIndianNumeral(numericValue % 100000)}";
    } else if (numericValue >= 1000) {
      return "${numericValue ~/ 1000} thousand ${longIndianNumeral(numericValue % 1000)}";
    } else if (numericValue >= 100) {
      return "${numericValue ~/ 100} hundred ${longIndianNumeral(numericValue % 100)}";
    } else if (numericValue >= 20) {
      const List<String> tens = [
        "",
        "",
        "twenty",
        "thirty",
        "forty",
        "fifty",
        "sixty",
        "seventy",
        "eighty",
        "ninety"
      ];
      return "${tens[numericValue ~/ 10]} ${longIndianNumeral(numericValue % 10)}";
    } else if (numericValue >= 1) {
      const List<String> ones = [
        "",
        "one",
        "two",
        "three",
        "four",
        "five",
        "six",
        "seven",
        "eight",
        "nine",
        "ten",
        "eleven",
        "twelve",
        "thirteen",
        "fourteen",
        "fifteen",
        "sixteen",
        "seventeen",
        "eighteen",
        "nineteen"
      ];
      return ones[numericValue.toInt()];
    } else {
      return "";
    }
  }
}
