class Coordinates {
  /// The geographic coordinate that specifies the north–south position of a point on the Earth's surface.
  final double latitude;

  /// The geographic coordinate that specifies the east-west position of a point on the Earth's surface.
  final double longitude;

  const Coordinates(this.latitude, this.longitude);

  /// Creates coordinates from a map containing its properties.
  Coordinates.fromMap(Map map)
      : latitude = map["latitude"],
        longitude = map["longitude"];

  /// Creates a map from the coordinates properties.
  Map toMap() => {
        "latitude": latitude,
        "longitude": longitude,
      };

  @override
  String toString() => "{$latitude,$longitude}";
}

class Address {
  /// The geographic coordinates.
  final Coordinates coordinates;

  /// The formatted address with all lines.
  final String addressLine;

  /// The localized country name of the address.
  final String countryName;

  /// The country code of the address.
  final String countryCode;

  /// The feature name of the address.
  final String featureName;

  /// The postal code.
  final String? postalCode;

  /// The administrative area name of the address
  final String? adminArea;

  /// The sub-administrative area name of the address
  final String? subAdminArea;

  /// The locality of the address
  final String? locality;

  /// The sub-locality of the address
  final String? subLocality;

  /// The thoroughfare name of the address
  final String? thoroughfare;

  /// The sub-thoroughfare name of the address
  final String? subThoroughfare;

  const Address({
    required this.coordinates,
    required this.addressLine,
    required this.countryName,
    required this.countryCode,
    required this.featureName,
    this.postalCode,
    this.adminArea,
    this.subAdminArea,
    this.locality,
    this.subLocality,
    this.thoroughfare,
    this.subThoroughfare,
  });

  /// Creates an address from a map containing its properties.
  Address.fromMap(Map map)
      : coordinates = Coordinates.fromMap(map["coordinates"]),
        addressLine = map["addressLine"],
        countryName = map["countryName"],
        countryCode = map["countryCode"],
        featureName = map["featureName"],
        postalCode = map.containsKey("postalCode") ? map["postalCode"] : null,
        locality = map.containsKey("locality") ? map["locality"] : null,
        subLocality =
            map.containsKey("subLocality") ? map["subLocality"] : null,
        adminArea = map.containsKey("adminArea") ? map["adminArea"] : null,
        subAdminArea =
            map.containsKey("subAdminArea") ? map["subAdminArea"] : null,
        thoroughfare =
            map.containsKey("thoroughfare") ? map["thoroughfare"] : null,
        subThoroughfare =
            map.containsKey("subThoroughfare") ? map["subThoroughfare"] : null;

  /// Creates a map from the address properties.
  Map toMap() => {
        "coordinates": coordinates.toMap(),
        "addressLine": addressLine,
        "countryName": countryName,
        "countryCode": countryCode,
        "featureName": featureName,
        "postalCode": postalCode,
        "locality": locality,
        "subLocality": subLocality,
        "adminArea": adminArea,
        "subAdminArea": subAdminArea,
        "thoroughfare": thoroughfare,
        "subThoroughfare": subThoroughfare,
      };
}
