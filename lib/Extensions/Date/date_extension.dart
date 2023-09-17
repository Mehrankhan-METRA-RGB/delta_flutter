// ignore_for_file: non_constant_identifier_names

import 'package:delta/Helpers/DateTime/delta_date_helper.dart';
import 'package:vm_service/vm_service.dart';

extension Date on DateTime {
  ///  9,May 2023
  String get DATE => DateHelper().simpleDate(millisecondsSinceEpoch);

  /// DD-MM-YYYY
  ///
  /// Pakistani Format
  String get DMY => DateHelper().PAKISTANI(millisecondsSinceEpoch);

  /// DD/MM/YYYY
  ///
  /// Pakistani Format
  String get slash_DMY => DateHelper().SLASH_PAKISTANI(millisecondsSinceEpoch);

  // ///December 3rd 2014
  // ///
  // /// Pakistani Format
  // String get littleEndian =>
  //     DateHelper().SLASH_PAKISTANI(millisecondsSinceEpoch);

  /// 9:12:23 PM
  String get HMS_12 => DateHelper().HMS_12(millisecondsSinceEpoch);

  ///  21:12:23
  String get HMS_24 => DateHelper().HMS_24(millisecondsSinceEpoch);

  ///  9:12 PM
  String get HM_12 => DateHelper().HM_12(millisecondsSinceEpoch);

  ///  21:12
  String get HM_24 => DateHelper().HM_24(millisecondsSinceEpoch);

  /// 9:12 AM on May 9, 2023
  String get HMMDY => DateHelper().HMMDY(millisecondsSinceEpoch);

  ///  1 second past midnight Eastern Standard Time (EST) on January 1, 1901

  String get S_UTC_MDY => DateHelper().S_UTC_MDY(millisecondsSinceEpoch);

  /// Aug 29, 2023 at 12:27 AM
  String get ABSOLUTE_FB => DateHelper().FB_Format(millisecondsSinceEpoch);

  ///Wednesday at 00:00:00 am
  String get DHMS => DateHelper().DHMS(millisecondsSinceEpoch);

  ///Return a time difference in String letters
  ///
  ///Like:
  ///
  /// Last month, A minute ago, Half hour ago, Yesterday,
  String get timeAgoString =>
      DateHelper().timeAgoString(millisecondsSinceEpoch);

  ///Return a time difference in Numeric
  ///
  ///Like:
  ///
  /// 2 month ago, 5 minute ago, Half hour ago, 1 day ago, 6 hours ago
  String get timeAgoNumeric =>
      DateHelper().timeAgoString(millisecondsSinceEpoch);

  /// 30 seconds after 2:00 PM on April 1, 1977
  String get SHMMDY => DateHelper().SHMMDY(millisecondsSinceEpoch);

  //TODO:Continue
  /// RFC 2822: This is a standard for email messages that includes a date and time. It uses a format like “Sun, 27 Aug 2023 18:31:19 +0500” to represent the date and time.
  String get emailDate => DateHelper().emailDate(millisecondsSinceEpoch);

  /// Long date and time: This format displays the date and time using the long format specified in the regional settings. For example, in the United States, this format is typically “dddd, MMMM dd, yyyy h:mm:ss tt”.
  String get longUSDateTime =>
      DateHelper().long_US_DateTime(millisecondsSinceEpoch);

  /// Short date and time: This format displays the date and time using the short format specified in the regional settings. For example, in the United States, this format is typically “M/d/yyyy h:mm tt”.
  String get shortUSDateTime =>
      DateHelper().short_US_DateTime(millisecondsSinceEpoch);

  /// MAC OS Format: The date and time format "Sun 27 Aug 11:30 PM" appears to be in a relatively standard and commonly used format for displaying dates and times in a readable, human-friendly way. macOS allows you to customize date and time formats to a certain extent, but this particular format doesn't require extensive customization and is typically available as one of the default options.
  String get macOSDateTime =>
      DateHelper().mac_OS_DateTime(millisecondsSinceEpoch);

  /// Time Names in day
  ///
  ///  'Early morning'  4 -> 6
  ///
  ///    'Morning'  7-> 11
  ///
  ///   'Noon'  12 -> 12
  ///
  ///    'Afternoon'  13 -> 17
  ///
  ///    'Evening'  18 -> 20
  ///
  ///    'Night', 21 -> 23
  ///
  ///    'Midnight' 0 -> 3
  /// Determines the time of day based on the given hour.
  ///
  /// @param hour The hour of the day (in 24-hour format).
  /// @return A string representing the time of day.
  String get dayTimeName => DateHelper().dayTimeName(millisecondsSinceEpoch);

  ///A leap year is a year with an extra day—February 29—which is added nearly every four years to the calendar year. In an ordinary year, there are 365 days in the year, but in a leap year, there are 366 days. The extra day is added to the calendar every four years so that our calendar stays synchronized with the astronomical seasons.
  bool get isLeapYear => DateHelper().leapYear(millisecondsSinceEpoch);

  ///   Variation of the ISO 8601 standard, which is used by HTML for its date and time strings.
  ///

  /// The format of date and time here is yyyy-MM-ddTHH:mm:ssZ, which represents a global date and time string in HTML. For example, 1901-01-01T00:00Z means midnight UTC on January 1, 1901.
  String get iso801 => DateHelper().ISO_801(millisecondsSinceEpoch);

  ///  	11:30 PM and 20 seconds
  String get hmAndSeconds => DateHelper().HM_SECONDS(millisecondsSinceEpoch);

  ///12 August 2023 at 09:41:45 UTC+5
  String get firebase => DateHelper().FIREBASE(millisecondsSinceEpoch);
}

/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

extension Stamp on Timestamp {
  ///  9,May 2023
  String get DATE => DateHelper().simpleDate(timestamp ?? -1);

  /// this will convert [Timestamp] into [DateTime]
  DateTime get toDate {
    return DateTime.fromMillisecondsSinceEpoch(timestamp ?? -1);
  }

  /// DD-MM-YYYY
  ///
  /// Pakistani Format
  String get DMY => DateHelper().PAKISTANI(timestamp ?? -1);

  /// DD/MM/YYYY
  ///
  /// Pakistani Format
  String get slash_DMY => DateHelper().SLASH_PAKISTANI(timestamp ?? -1);

  ///December 3rd 2014
  ///
  /// Pakistani Format
  String get littleEndian => DateHelper().SLASH_PAKISTANI(timestamp ?? -1);

  /// 9:12:23 PM
  String get HMS_12 => DateHelper().HMS_12(timestamp ?? -1);

  ///  21:12:23
  String get HMS_24 => DateHelper().HMS_24(timestamp ?? -1);

  ///  9:12 PM
  String get HM_12 => DateHelper().HM_12(timestamp ?? -1);

  ///  21:12
  String get HM_24 => DateHelper().HM_24(timestamp ?? -1);

  ///A leap year is a year with an extra day—February 29—which is added nearly every four years to the calendar year. In an ordinary year, there are 365 days in the year, but in a leap year, there are 366 days. The extra day is added to the calendar every four years so that our calendar stays synchronized with the astronomical seasons.
  bool get isLeapYear => DateHelper().leapYear(timestamp ?? -1);

  /// 9:12 AM on May 9, 2023
  String get HMMDY => DateHelper().HMMDY(timestamp ?? -1);

  ///  1 second past midnight Eastern Standard Time (EST) on January 1, 1901

  String get S_UTC_MDY => DateHelper().S_UTC_MDY(timestamp ?? -1);

  /// Aug 29, 2023 at 12:27 AM
  String get ABSOLUTE_FB => DateHelper().FB_Format(timestamp ?? -1);

  ///Wednesday at 00:00:00 am
  String get DHMS => DateHelper().DHMS(timestamp ?? -1);

  ///Return a time difference in String letters
  ///
  ///Like:
  ///
  /// Last month, A minute ago, Half hour ago, Yesterday,
  String get timeAgoString => DateHelper().timeAgoString(timestamp ?? -1);

  ///Return a time difference in Numeric
  ///
  ///Like:
  ///
  /// 2 month ago, 5 minute ago, Half hour ago, 1 day ago, 6 hours ago
  String get timeAgoNumeric => DateHelper().timeAgoString(timestamp ?? -1);

  /// 30 seconds after 2:00 PM on April 1, 1977
  String get SHMMDY => DateHelper().SHMMDY(timestamp ?? -1);

  //TODO:Continue
  /// RFC 2822: This is a standard for email messages that includes a date and time. It uses a format like “Sun, 27 Aug 2023 18:31:19 +0500” to represent the date and time.
  String get emailDate => DateHelper().emailDate(timestamp ?? -1);

  /// Long date and time: This format displays the date and time using the long format specified in the regional settings. For example, in the United States, this format is typically “dddd, MMMM dd, yyyy h:mm:ss tt”.
  String get longUSDateTime => DateHelper().long_US_DateTime(timestamp ?? -1);

  /// Short date and time: This format displays the date and time using the short format specified in the regional settings. For example, in the United States, this format is typically “M/d/yyyy h:mm tt”.
  String get shortUSDateTime => DateHelper().short_US_DateTime(timestamp ?? -1);

  /// MAC OS Format:   Sun 27 Aug  11:30 PM
  String get macOSDateTime => DateHelper().mac_OS_DateTime(timestamp ?? -1);

  /// Time Names in day
  ///
  ///  'Early morning'  4 -> 6
  ///
  ///    'Morning'  7-> 11
  ///
  ///   'Noon'  12 -> 12
  ///
  ///    'Afternoon'  13 -> 17
  ///
  ///    'Evening'  18 -> 20
  ///
  ///    'Night', 21 -> 23
  ///
  ///    'Midnight' 0 -> 3
  String get dayTimeName => DateHelper().dayTimeName(timestamp ?? -1);

  ///   Variation of the ISO 8601 standard, which is used by HTML for its date and time strings.
  ///

  /// The format of date and time here is yyyy-MM-ddTHH:mm:ssZ, which represents a global date and time string in HTML. For example, 1901-01-01T00:00Z means midnight UTC on January 1, 1901.
  String get iso801 => DateHelper().ISO_801(timestamp ?? -1);

  ///  	11:30 PM and 20 seconds
  String get hmAndSeconds => DateHelper().HM_SECONDS(timestamp ?? -1);

  ///12 August 2023 at 09:41:45 UTC+5
  String get firebase => DateHelper().FIREBASE(timestamp ?? -1);
}
