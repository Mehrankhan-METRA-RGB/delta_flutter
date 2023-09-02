import 'package:delta/Helpers/Country/countries_helper.dart';

extension Country on String {
  /// {
  /// "CountryCode": "+31",
  /// "Country": "Pakistan",
  /// "Currency": "Pakistan Rupee",
  /// "Code": "PKR",
  /// "Symbol": "₨"
  /// }
  String? get countryCode => CountryHelper().countryDetails(this).countryCode;
  String? get currencyName => CountryHelper().countryDetails(this).currency;
  String? get countryISO => CountryHelper().countryDetails(this).code;
  String? get currencySymbol => CountryHelper().countryDetails(this).symbol;
  List<String>? get cities => CountryHelper().cities(this);
}
