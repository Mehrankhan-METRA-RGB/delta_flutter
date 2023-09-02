import 'dart:convert';

class Country {
  final String? name;
  final List<String>? topLevelDomain;
  final String? alpha2Code;
  final String? alpha3Code;
  final List<String>? callingCodes;
  final String? capital;
  final List<String>? altSpellings;
  final String? subregion;
  final String? region;
  final int? population;
  final List<int>? latlng;
  final String? demonym;
  final int? area;
  final List<String>? timezones;
  final List<String>? borders;
  final String? nativeName;
  final String? numericCode;
  final Flags? flags;
  final List<Currency>? currencies;
  final List<Language>? languages;
  final Translations? translations;
  final String? flag;
  final List<RegionalBloc>? regionalBlocs;
  final String? cioc;
  final bool? independent;
  final List<String>? cities;

  Country({
    this.name,
    this.topLevelDomain,
    this.alpha2Code,
    this.alpha3Code,
    this.callingCodes,
    this.capital,
    this.altSpellings,
    this.subregion,
    this.region,
    this.population,
    this.latlng,
    this.demonym,
    this.area,
    this.timezones,
    this.borders,
    this.nativeName,
    this.numericCode,
    this.flags,
    this.currencies,
    this.languages,
    this.translations,
    this.flag,
    this.regionalBlocs,
    this.cioc,
    this.independent,
    this.cities,
  });

  Country copyWith({
    String? name,
    List<String>? topLevelDomain,
    String? alpha2Code,
    String? alpha3Code,
    List<String>? callingCodes,
    String? capital,
    List<String>? altSpellings,
    String? subregion,
    String? region,
    int? population,
    List<int>? latlng,
    String? demonym,
    int? area,
    List<String>? timezones,
    List<String>? borders,
    String? nativeName,
    String? numericCode,
    Flags? flags,
    List<Currency>? currencies,
    List<Language>? languages,
    Translations? translations,
    String? flag,
    List<RegionalBloc>? regionalBlocs,
    String? cioc,
    bool? independent,
    List<String>? cities,
  }) =>
      Country(
        name: name ?? this.name,
        topLevelDomain: topLevelDomain ?? this.topLevelDomain,
        alpha2Code: alpha2Code ?? this.alpha2Code,
        alpha3Code: alpha3Code ?? this.alpha3Code,
        callingCodes: callingCodes ?? this.callingCodes,
        capital: capital ?? this.capital,
        altSpellings: altSpellings ?? this.altSpellings,
        subregion: subregion ?? this.subregion,
        region: region ?? this.region,
        population: population ?? this.population,
        latlng: latlng ?? this.latlng,
        demonym: demonym ?? this.demonym,
        area: area ?? this.area,
        timezones: timezones ?? this.timezones,
        borders: borders ?? this.borders,
        nativeName: nativeName ?? this.nativeName,
        numericCode: numericCode ?? this.numericCode,
        flags: flags ?? this.flags,
        currencies: currencies ?? this.currencies,
        languages: languages ?? this.languages,
        translations: translations ?? this.translations,
        flag: flag ?? this.flag,
        regionalBlocs: regionalBlocs ?? this.regionalBlocs,
        cioc: cioc ?? this.cioc,
        independent: independent ?? this.independent,
        cities: cities ?? this.cities,
      );

  factory Country.fromRawJson(String str) => Country.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        name: json["name"],
        topLevelDomain: json["topLevelDomain"] == null
            ? []
            : List<String>.from(json["topLevelDomain"]!.map((x) => x)),
        alpha2Code: json["alpha2Code"],
        alpha3Code: json["alpha3Code"],
        callingCodes: json["callingCodes"] == null
            ? []
            : List<String>.from(json["callingCodes"]!.map((x) => x)),
        capital: json["capital"],
        altSpellings: json["altSpellings"] == null
            ? []
            : List<String>.from(json["altSpellings"]!.map((x) => x)),
        subregion: json["subregion"],
        region: json["region"],
        population: json["population"],
        latlng: json["latlng"] == null
            ? []
            : List<int>.from(json["latlng"]!.map((x) => x)),
        demonym: json["demonym"],
        area: json["area"],
        timezones: json["timezones"] == null
            ? []
            : List<String>.from(json["timezones"]!.map((x) => x)),
        borders: json["borders"] == null
            ? []
            : List<String>.from(json["borders"]!.map((x) => x)),
        nativeName: json["nativeName"],
        numericCode: json["numericCode"],
        flags: json["flags"] == null ? null : Flags.fromJson(json["flags"]),
        currencies: json["currencies"] == null
            ? []
            : List<Currency>.from(
                json["currencies"]!.map((x) => Currency.fromJson(x))),
        languages: json["languages"] == null
            ? []
            : List<Language>.from(
                json["languages"]!.map((x) => Language.fromJson(x))),
        translations: json["translations"] == null
            ? null
            : Translations.fromJson(json["translations"]),
        flag: json["flag"],
        regionalBlocs: json["regionalBlocs"] == null
            ? []
            : List<RegionalBloc>.from(
                json["regionalBlocs"]!.map((x) => RegionalBloc.fromJson(x))),
        cioc: json["cioc"],
        independent: json["independent"],
        cities: json["cities"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "topLevelDomain": topLevelDomain == null
            ? []
            : List<dynamic>.from(topLevelDomain!.map((x) => x)),
        "alpha2Code": alpha2Code,
        "alpha3Code": alpha3Code,
        "callingCodes": callingCodes == null
            ? []
            : List<dynamic>.from(callingCodes!.map((x) => x)),
        "capital": capital,
        "altSpellings": altSpellings == null
            ? []
            : List<dynamic>.from(altSpellings!.map((x) => x)),
        "subregion": subregion,
        "region": region,
        "population": population,
        "latlng":
            latlng == null ? [] : List<dynamic>.from(latlng!.map((x) => x)),
        "demonym": demonym,
        "area": area,
        "timezones": timezones == null
            ? []
            : List<dynamic>.from(timezones!.map((x) => x)),
        "borders":
            borders == null ? [] : List<dynamic>.from(borders!.map((x) => x)),
        "nativeName": nativeName,
        "numericCode": numericCode,
        "flags": flags?.toJson(),
        "currencies": currencies == null
            ? []
            : List<dynamic>.from(currencies!.map((x) => x.toJson())),
        "languages": languages == null
            ? []
            : List<dynamic>.from(languages!.map((x) => x.toJson())),
        "translations": translations?.toJson(),
        "flag": flag,
        "regionalBlocs": regionalBlocs == null
            ? []
            : List<dynamic>.from(regionalBlocs!.map((x) => x.toJson())),
        "cioc": cioc,
        "independent": independent,
        "cities": cities,
      };
}

class Currency {
  final String? code;
  final String? name;
  final String? symbol;

  Currency({
    this.code,
    this.name,
    this.symbol,
  });

  Currency copyWith({
    String? code,
    String? name,
    String? symbol,
  }) =>
      Currency(
        code: code ?? this.code,
        name: name ?? this.name,
        symbol: symbol ?? this.symbol,
      );

  factory Currency.fromRawJson(String str) =>
      Currency.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        code: json["code"],
        name: json["name"],
        symbol: json["symbol"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
        "symbol": symbol,
      };
}

class Flags {
  final String? svg;
  final String? png;

  Flags({
    this.svg,
    this.png,
  });

  Flags copyWith({
    String? svg,
    String? png,
  }) =>
      Flags(
        svg: svg ?? this.svg,
        png: png ?? this.png,
      );

  factory Flags.fromRawJson(String str) => Flags.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        svg: json["svg"],
        png: json["png"],
      );

  Map<String, dynamic> toJson() => {
        "svg": svg,
        "png": png,
      };
}

class Language {
  final String? iso6391;
  final String? iso6392;
  final String? name;
  final String? nativeName;

  Language({
    this.iso6391,
    this.iso6392,
    this.name,
    this.nativeName,
  });

  Language copyWith({
    String? iso6391,
    String? iso6392,
    String? name,
    String? nativeName,
  }) =>
      Language(
        iso6391: iso6391 ?? this.iso6391,
        iso6392: iso6392 ?? this.iso6392,
        name: name ?? this.name,
        nativeName: nativeName ?? this.nativeName,
      );

  factory Language.fromRawJson(String str) =>
      Language.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Language.fromJson(Map<String, dynamic> json) => Language(
        iso6391: json["iso639_1"],
        iso6392: json["iso639_2"],
        name: json["name"],
        nativeName: json["nativeName"],
      );

  Map<String, dynamic> toJson() => {
        "iso639_1": iso6391,
        "iso639_2": iso6392,
        "name": name,
        "nativeName": nativeName,
      };
}

class RegionalBloc {
  final String? acronym;
  final String? name;

  RegionalBloc({
    this.acronym,
    this.name,
  });

  RegionalBloc copyWith({
    String? acronym,
    String? name,
  }) =>
      RegionalBloc(
        acronym: acronym ?? this.acronym,
        name: name ?? this.name,
      );

  factory RegionalBloc.fromRawJson(String str) =>
      RegionalBloc.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegionalBloc.fromJson(Map<String, dynamic> json) => RegionalBloc(
        acronym: json["acronym"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "acronym": acronym,
        "name": name,
      };
}

class Translations {
  final String? br;
  final String? pt;
  final String? nl;
  final String? hr;
  final String? fa;
  final String? de;
  final String? es;
  final String? fr;
  final String? ja;
  final String? it;
  final String? hu;

  Translations({
    this.br,
    this.pt,
    this.nl,
    this.hr,
    this.fa,
    this.de,
    this.es,
    this.fr,
    this.ja,
    this.it,
    this.hu,
  });

  Translations copyWith({
    String? br,
    String? pt,
    String? nl,
    String? hr,
    String? fa,
    String? de,
    String? es,
    String? fr,
    String? ja,
    String? it,
    String? hu,
  }) =>
      Translations(
        br: br ?? this.br,
        pt: pt ?? this.pt,
        nl: nl ?? this.nl,
        hr: hr ?? this.hr,
        fa: fa ?? this.fa,
        de: de ?? this.de,
        es: es ?? this.es,
        fr: fr ?? this.fr,
        ja: ja ?? this.ja,
        it: it ?? this.it,
        hu: hu ?? this.hu,
      );

  factory Translations.fromRawJson(String str) =>
      Translations.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Translations.fromJson(Map<String, dynamic> json) => Translations(
        br: json["br"],
        pt: json["pt"],
        nl: json["nl"],
        hr: json["hr"],
        fa: json["fa"],
        de: json["de"],
        es: json["es"],
        fr: json["fr"],
        ja: json["ja"],
        it: json["it"],
        hu: json["hu"],
      );

  Map<String, dynamic> toJson() => {
        "br": br,
        "pt": pt,
        "nl": nl,
        "hr": hr,
        "fa": fa,
        "de": de,
        "es": es,
        "fr": fr,
        "ja": ja,
        "it": it,
        "hu": hu,
      };
}
