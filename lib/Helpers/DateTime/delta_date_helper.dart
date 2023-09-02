// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:delta/Helpers/DateTime/day_time_names.dart';

class DateHelper {
  static const List<String> shortMonths = [
    " ",
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];

  String _monthFullName(int month) {
    switch (month) {
      case 1:
        return 'January';
      case 2:
        return 'February';
      case 3:
        return 'March';
      case 4:
        return 'April';
      case 5:
        return 'May';
      case 6:
        return 'June';
      case 7:
        return 'July';
      case 8:
        return 'August';
      case 9:
        return 'September';
      case 10:
        return 'October';
      case 11:
        return 'November';
      case 12:
        return 'December';
      default:
        return 'Invalid month';
    }
  }

  static const List<String> shortWeekdays = [
    "",
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun'
  ];

  static const List<int> daysInMonth_simpleYear = [
    0,
    31,
    28,
    31,
    30,
    31,
    30,
    31,
    31,
    30,
    31,
    30,
    31
  ];
  static const List<int> daysInMonth_leapYear = [
    0,
    31,
    29,
    31,
    30,
    31,
    30,
    31,
    31,
    30,
    31,
    30,
    31
  ];

  String HM_12(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);

    int hour = date.hour;
    int minute = date.minute;

    return "${hour == 0 ? 12 : hour > 12 ? hour - 12 : hour}:$minute ${hour > 12 ? "PM" : "AM"}";
  }

  String HM_24(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);

    return "${date.hour}:${date.minute}";
  }

  String HMS_12(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);

    int hour = date.hour;
    int minute = date.minute;

    return "${hour == 0 ? 12 : hour > 12 ? hour - 12 : hour}:$minute:${date.second} ${hour > 12 ? "PM" : "AM"}";
  }

  String HMS_24(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);

    return "${date.hour}:${date.minute}:${date.second}";
  }

  bool isLeapYear(int year) {
    return (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0));
  }

  bool leapYear(int milliSecondTimeEpoch) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(milliSecondTimeEpoch);
    if (date.year < 1) {
      throw UnsupportedError("Please Enter a proper Time");
    }
    return (date.year % 4 == 0) &&
        ((date.year % 100 != 0) || (date.year % 400 == 0));
  }

  String simpleDate(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);

    return "${date.day} ${shortMonths[date.month]}, ${date.year}";
  }

  /// DD-MM-YYYY
  String PAKISTANI(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);

    return "${date.day}-${date.month}-${date.year}";
  }

  /// DD/MM/YYYY
  String SLASH_PAKISTANI(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);

    return "${date.day}/${date.month}/${date.year}";
  }

  ///Sun, 27 Aug 2023
  String emailDate(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return "${shortWeekdays[date.weekday]}, ${date.day} ${shortMonths[date.month]} ${date.year} ${HMS_12(timestamp)}";
  }

  ///dddd, MMMM dd, yyyy h:mm:ss tt
  String long_US_DateTime(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return "${shortWeekdays[date.weekday]}, ${shortMonths[date.month]} ${date.day}, ${date.year} ${HMS_24(timestamp)} ${date.timeZoneName}";
  }

  /// M/d/yyyy h:mm tt
  String short_US_DateTime(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return "${date.month}/${date.day}/${date.year} ${HM_24(timestamp)} ${date.timeZoneName}";
  }

  /// MAC OS Format   Sun 27 Aug  11:30 PM
  String mac_OS_DateTime(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return "${shortWeekdays[date.weekday]} ${date.day} ${shortMonths[date.month]}  ${HM_12(timestamp)}";
  }

  /// Day time name
  String dayTimeName(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return getTimeName(date.hour);
  }

  /// ISO 801 Variation  (midnight UTC on January 1, 1901)
  String ISO_801(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return "${getTimeName(date.hour)} ${date.timeZoneName} ${shortMonths[date.month]} ${date.day}, ${date.year}";
  }

  /// 11:30 PM and 20 seconds
  String HM_SECONDS(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return "${HM_12(timestamp)} and ${date.second}s";
  }

  /// 9:12 AM on May 9, 2023
  String HMMDY(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return "${HM_12(timestamp)} on ${shortMonths[date.month]} ${date.day}, ${date.year}";
  }

  /// 30 seconds after 2:00 PM on April 1, 1977
  String SHMMDY(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return "${date.second} seconds after ${HM_12(timestamp)} on ${shortMonths[date.month]} ${date.day}, ${date.year}";
  }

  /// 1 second past midnight Eastern Standard Time (EST) on January 1, 1901
  String S_UTC_MDY(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return "${date.second} ${date.second < 2 ? "second" : "seconds"} ${dayTimeName(timestamp)} (${date.timeZoneName}) on ${shortMonths[date.month]} ${date.day}, ${date.year}";
  }

  ///Wednesday at 00:00:00 am
  String DHMS(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return "${shortWeekdays[date.weekday]} at ${HMS_12(timestamp)}";
  }

  ///Aug 29, 2023 at 12:27 AM
  String FB_Format(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return "${shortMonths[date.month]} ${date.day}, ${date.year} at ${HM_12(timestamp)}";
  }

  ///12 August 2023 at 09:41:45 UTC+5
  String FIREBASE(int timestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return "${date.day} ${_monthFullName(date.month)} ${date.year} at ${HMS_24(timestamp)} ${date.timeZoneName} ${date.timeZoneOffset.inHours}";
  }

  String timeAgoNumeric(
    int timestamp,
  ) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);

    final date2 = DateTime.now();
    final difference = date2.difference(date);
    final years = (difference.inDays / 365).round();
    if (difference.inDays > 365) {
      return "$years ${years == 1 ? "year" : "years"} ago";
    } else if (difference.inDays > 28 && difference.inDays <= 366) {
      double averageDaysInMonth =
          (daysInMonth_leapYear.fold<int>(0, (a, b) => a + b)) / 12;

      int totalMonths = (difference.inDays / averageDaysInMonth).round();
      return "$totalMonths ${totalMonths == 1 ? "month" : "months"} ago";
    } else if ((difference.inDays / 7).floor() >= 1) {
      return '1 week ago';
    } else if (difference.inDays >= 2) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays >= 1) {
      return '1 day ago';
    } else if (difference.inHours >= 2) {
      return '${difference.inHours} hours ago';
    } else if (difference.inHours >= 1) {
      return '1 hour ago';
    } else if (difference.inMinutes >= 2) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inMinutes >= 1) {
      return '1 minute ago';
    } else if (difference.inSeconds >= 3) {
      return '${difference.inSeconds} seconds ago';
    } else {
      return 'Just now';
    }
  }

  String timeAgoString(
    int timestamp,
  ) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);

    final date2 = DateTime.now();
    final difference = date2.difference(date);
    final years = (difference.inDays / 365).floor();
    if (difference.inDays > 364) {
      return "${years == 1 ? "Last" : years} ${years == 1 ? "year" : "years ago"}";
    } else if (difference.inDays > 28 && difference.inDays <= 366) {
      double averageDaysInMonth =
          (daysInMonth_leapYear.fold<int>(0, (a, b) => a + b)) / 12;
      int totalMonths = (difference.inDays / averageDaysInMonth).round();
      return "${totalMonths == 1 ? "Last" : totalMonths} ${totalMonths == 1 ? "month" : "months ago"}";
    } else if ((difference.inDays / 7).floor() >= 1) {
      return 'Last week';
    } else if (difference.inDays >= 2) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays >= 1) {
      return 'Yesterday';
    } else if (difference.inHours > 1) {
      return '${difference.inHours} hours ago';
    } else if (difference.inHours == 1) {
      return 'A hour ago';
    } else if (difference.inMinutes >= 13 && difference.inMinutes <= 17) {
      return 'Quarter hour ago';
    } else if (difference.inMinutes <= 32 && difference.inMinutes >= 28) {
      return 'Half hour ago';
    } else if (difference.inMinutes >= 2) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inMinutes >= 1) {
      return 'A minute ago';
    } else if (difference.inSeconds > 4) {
      return '${difference.inSeconds} seconds ago';
    } else {
      return 'Just now';
    }
  }
}
