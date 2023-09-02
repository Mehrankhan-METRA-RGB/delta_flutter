import 'package:delta/Helpers/Counts/counts_helper.dart';

extension Counts on num {
  /// ///Convert int,double or num value to readable price
  ///
  /// Example: 65000 to  String 65k,
  ///  6500000 to String 6.5M
  String get globalUnit => CountsHelper().calculateGlobalUnit(this);

  ///Convert int,double or num price to readable price
  ///
  /// Example: 47000 to  String 65 Thousand,
  ///  6500000 to String 65Lakh
  String get asianUnit => CountsHelper().calculateLocalUnit(this);
}
