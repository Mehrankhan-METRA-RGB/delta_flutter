// class DeltaDatimeParser {
// DeltaDatimeParser._withValue(this._value, {required this.isUtc}) {
//   if (millisecondsSinceEpoch.abs() > _maxMillisecondsSinceEpoch ||
//       (millisecondsSinceEpoch.abs() == _maxMillisecondsSinceEpoch &&
//           microsecond != 0)) {
//     throw ArgumentError(
//         "DateTime is outside valid range: $millisecondsSinceEpoch");
//   }
//   // For backwards compatibility with legacy mode.
//   checkNotNullable(isUtc, "isUtc");
// }
// static DateTime parse(String formattedString) {
//   var re = _parseFormat;
//   Match? match = re.firstMatch(formattedString);
//   if (match != null) {
//     int parseIntOrZero(String? matched) {
//       if (matched == null) return 0;
//       return int.parse(matched);
//     }
//
//     // Parses fractional second digits of '.(\d+)' into the combined
//     // microseconds. We only use the first 6 digits because of DateTime
//     // precision of 999 milliseconds and 999 microseconds.
//     int parseMilliAndMicroseconds(String? matched) {
//       if (matched == null) return 0;
//       int length = matched.length;
//       assert(length >= 1);
//       int result = 0;
//       for (int i = 0; i < 6; i++) {
//         result *= 10;
//         if (i < matched.length) {
//           result += matched.codeUnitAt(i) ^ 0x30;
//         }
//       }
//       return result;
//     }
//
//     int years = int.parse(match[1]!);
//     int month = int.parse(match[2]!);
//     int day = int.parse(match[3]!);
//     int hour = parseIntOrZero(match[4]);
//     int minute = parseIntOrZero(match[5]);
//     int second = parseIntOrZero(match[6]);
//     int milliAndMicroseconds = parseMilliAndMicroseconds(match[7]);
//     int millisecond =
//         milliAndMicroseconds ~/ Duration.microsecondsPerMillisecond;
//     int microsecond = milliAndMicroseconds
//         .remainder(Duration.microsecondsPerMillisecond) as int;
//     bool isUtc = false;
//     if (match[8] != null) {
//       // timezone part
//       isUtc = true;
//       String? tzSign = match[9];
//       if (tzSign != null) {
//         // timezone other than 'Z' and 'z'.
//         int sign = (tzSign == '-') ? -1 : 1;
//         int hourDifference = int.parse(match[10]!);
//         int minuteDifference = parseIntOrZero(match[11]);
//         minuteDifference += 60 * hourDifference;
//         minute -= sign * minuteDifference;
//       }
//     }
//     int? value = _brokenDownDateToValue(years, month, day, hour, minute,
//         second, millisecond, microsecond, isUtc);
//     if (value == null) {
//       throw FormatException("Time out of range", formattedString);
//     }
//     return DateTime._withValue(value, isUtc: isUtc);
//   } else {
//     throw FormatException("Invalid date format", formattedString);
//   }
// }

/// Returns the time as value (millisecond or microsecond since epoch), or
/// null if the values are out of range.
//   external static int? _brokenDownDateToValue(
//       int year,
//       int month,
//       int day,
//       int hour,
//       int minute,
//       int second,
//       int millisecond,
//       int microsecond,
//       bool isUtc);
// }
