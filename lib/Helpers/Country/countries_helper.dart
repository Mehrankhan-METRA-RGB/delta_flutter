import 'package:delta/Data/cities_details.dart';
import 'package:delta/Data/countries_details.dart';
import 'package:delta/Models/country_model.dart';

class CountryHelper {
  CountryModel countryDetails(String country) {
    String newCountryName = country.toLowerCase();

    Map<String, dynamic> myCountryDetails = countries.firstWhere(
        (e) => e["Country"].toLowerCase() == newCountryName,
        orElse: () => throw UnsupportedError(
            "Your country name is incorrect make sure you entered a correct country name."));

    return CountryModel.fromJson(myCountryDetails);
  }

  List<String> cities(String country) {
    Map<String, dynamic> cities = countryCities.firstWhere(
        (e) => e["country"].toLowerCase() == country.toLowerCase(),
        orElse: () => throw UnsupportedError(
            "Your country name is incorrect make sure you entered a correct country name."));

    return cities["city"] as List<String>;
  }
}
