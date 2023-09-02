import 'package:delta/Helpers/Country/countries_helper.dart';
import 'package:delta/Models/country_model.dart';

extension CountryDetail on String {
  /// {
  /// "CountryCode": "+31",
  /// "Country": "Pakistan",
  /// "Currency": "Pakistan Rupee",
  /// "Code": "PKR",
  /// "Symbol": "₨"
  /// }
  String? get countryCode =>
      CountryHelper().countryDetails(this).callingCodes![0];
  String? get currencyName =>
      CountryHelper().countryDetails(this).currencies![0].name;
  String? get iso2 => CountryHelper().countryDetails(this).alpha2Code;
  String? get iso3 => CountryHelper().countryDetails(this).alpha3Code;

  // String? get currencySymbol => CountryHelper().countryDetails(this).symbol;
  List<String>? get cities => CountryHelper().cities(this);

  Country get country => CountryHelper().countryDetails(this);
}
