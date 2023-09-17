import 'package:delta/Data/cities_details.dart';
import 'package:delta/Data/countries_details.dart';
import 'package:delta/Models/country_model.dart';

class DeltaCountry {
  ///FOR EXAMPLE: we want see detail of pakistan.Then we have to call  ["Pakistan".countryDetail] will return below data as Country  Model class
  ///
  ///
  ///  {
  ///     "name": "Pakistan",
  ///     "topLevelDomain": [".pk"],
  ///     "alpha2Code": "PK",
  ///     "alpha3Code": "PAK",
  ///     "callingCodes": ["92"],
  ///     "capital": "Islamabad",
  ///     "altSpellings": [
  ///       "PK",
  ///       "Pākistān",
  ///       "Islamic Republic of Pakistan",
  ///       "Islāmī Jumhūriya'eh Pākistān"
  ///     ],
  ///     "subregion": "Southern Asia",
  ///     "region": "Asia",
  ///     "population": 220892331,
  ///     "latlng": [30, 70],
  ///     "demonym": "Pakistani",
  ///     "area": 881912,
  ///     "gini": 31.6,
  ///     "timezones": ["UTC+05:00"],
  ///     "borders": ["AFG", "CHN", "IND", "IRN"],
  ///     "nativeName": "Pakistan",
  ///     "numericCode": "586",
  ///     "flags": {
  ///       "svg": "https://flagcdn.com/pk.svg",
  ///       "png": "https://flagcdn.com/w320/pk.png"
  ///     },
  ///     "currencies": [
  ///       {"code": "PKR", "name": "Pakistani rupee", "symbol": "₨"}
  ///     ],
  ///     "languages": [
  ///       {
  ///         "iso639_1": "ur",
  ///         "iso639_2": "urd",
  ///         "name": "Urdu",
  ///         "nativeName": "اردو"
  ///       },
  ///       {
  ///         "iso639_1": "en",
  ///         "iso639_2": "eng",
  ///         "name": "English",
  ///         "nativeName": "English"
  ///       }
  ///     ],
  ///     "translations": {
  ///       "br": "Pakistan",
  ///       "pt": "Paquistão",
  ///       "nl": "Pakistan",
  ///       "hr": "Pakistan",
  ///       "fa": "پاکستان",
  ///       "de": "Pakistan",
  ///       "es": "Pakistán",
  ///       "fr": "Pakistan",
  ///       "ja": "パキスタン",
  ///       "it": "Pakistan",
  ///       "hu": "Pakisztán"
  ///     },
  ///     "flag": "https://flagcdn.com/pk.svg",
  ///     "regionalBlocs": [
  ///       {
  ///         "acronym": "SAARC",
  ///         "name": "South Asian Association for Regional Cooperation"
  ///       }
  ///     ],
  ///     "cioc": "PAK",
  ///     "independent": true
  ///     "cities":["Peshawar","Mardan","Lahore","Islamabad"..........]
  ///   },
  Country details(String country) {
    String newCountryName = country.toLowerCase();

    Map<String, dynamic> myCountryDetails = countries.firstWhere(
        (e) => e["name"].toLowerCase() == newCountryName,
        orElse: () => throw UnsupportedError(
            "Your country name is incorrect make sure you entered a correct country name."));
    Map<String, dynamic> cities = countryCities.firstWhere(
        (e) => e["country"].toLowerCase() == country.toLowerCase(),
        orElse: () => throw UnsupportedError(
            "Your country name is incorrect make sure you entered a correct country name."));

    return Country.fromJson(myCountryDetails)
        .copyWith(cities: cities["city"] as List<String>);
  }

  /// Will get all countries details
  List<Country> get all => List.from(countries.map((e) => Country.fromJson(e)));

  ///List dialCodes
  List<String> get dialCodes =>
      List.from(countries.map((e) => e['callingCodes']));

  ///List of country names
  List<String> get names => List.from(countries.map((e) => e['name']));

  ///list of Flags i.e {"svg":link,"png":link}
  List<Flags> get flagUrls =>
      List.from(countries.map((e) => Flags.fromJson(e['flags'])));

  /// List of cities
  List<String> cities(String country) {
    Map<String, dynamic> cities = countryCities.firstWhere(
        (e) => e["country"].toLowerCase() == country.toLowerCase(),
        orElse: () => throw UnsupportedError(
            "Your country name is incorrect make sure you entered a correct country spelling."));

    return cities["city"] as List<String>;
  }
}
