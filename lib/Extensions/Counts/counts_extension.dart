import 'package:delta/Helpers/Counts/counts_helper.dart';

extension Counts on num {
  /// ///Convert int,double or num value to readable price
  ///
  /// Example: 65000 to  String 65k,
  ///  6500000 to String 6.5M
  String get shortSINumeral => CountsHelper().shortSINumeral(this);

  String get longSINumeral => CountsHelper().longSiNumeral(this);

  ///Convert int,double or num price to readable price
  ///
  /// Example: 47000 to  String 65 Thousand,
  ///  6500000 to String 65Lakh
  String get shortIndianNumeral => CountsHelper().shortIndianNumeral(this);

  ///PAK ARMY Budget in 2021 was 11 Billions USD  which is equal to  33 Kharab 60 Arab 50 crore PKR,  which is 87% of total budget
  ///
  ///
  ///INDIAN ARMY Budget in 2021 was 76 Billions USD  which is equal to  232 Kharab 18 Arab  PKR,  which is 15% of total budget

  String get longIndianNumeral => CountsHelper().longIndianNumeral(this);
}
