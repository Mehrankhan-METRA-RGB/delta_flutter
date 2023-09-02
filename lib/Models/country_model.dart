import 'dart:convert';

class CountryModel {
  final String? countryCode;
  final String? country;
  final String? currency;
  final String? code;
  final String? symbol;
  final List<String>? cities;

  CountryModel({
    this.countryCode,
    this.country,
    this.currency,
    this.code,
    this.symbol,
    this.cities,
  });

  CountryModel copyWith({
    String? countryCode,
    String? country,
    String? currency,
    String? code,
    String? symbol,
    List<String>? cities,
  }) =>
      CountryModel(
        countryCode: countryCode ?? this.countryCode,
        country: country ?? this.country,
        currency: currency ?? this.currency,
        code: code ?? this.code,
        symbol: symbol ?? this.symbol,
        cities: cities ?? this.cities,
      );

  factory CountryModel.fromRawJson(String str) =>
      CountryModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
        countryCode: json["CountryCode"],
        country: json["Country"],
        currency: json["Currency"],
        code: json["Code"],
        symbol: json["Symbol"],
        cities: json["cities"] == null
            ? []
            : List<String>.from(json["cities"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "CountryCode": countryCode,
        "Country": country,
        "Currency": currency,
        "Code": code,
        "Symbol": symbol,
        "cities":
            cities == null ? [] : List<dynamic>.from(cities!.map((x) => x)),
      };
}
