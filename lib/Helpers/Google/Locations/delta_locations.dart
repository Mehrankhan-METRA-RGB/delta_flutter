import 'dart:convert';
import 'dart:io';

import 'package:delta/Models/geo_delta.dart';
import 'package:http/http.dart' as http;

class DeltaLocations {
  static const _host = 'https://maps.google.com/maps/api/geocode/json';

  final String apiKey;
  final String? language;

  final HttpClient _httpClient;

  DeltaLocations(this.apiKey, {this.language}) : _httpClient = HttpClient();

  Future<String> getPlaceNameFromCoordinates(
      double latitude, double longitude) async {
    try {
      final response = await http.get(
        Uri.parse(
            'https://maps.googleapis.com/maps/api/geocode/json?latlng=$latitude,$longitude&key=$apiKey'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final results = data['results'] as List;
        if (results.isNotEmpty) {
          final placeName = results[0]['formatted_address'] as String;
          return placeName;
        }
      }

      return "No place name found";
    } catch (e) {
      return "Error: $e";
    }
  }

  Future<String> getCoordinatesOfAddress(String address) async {
    try {
      final response = await http.get(
        Uri.parse(
            'https://maps.googleapis.com/maps/api/geocode/json?address=$address&key=$apiKey'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        // Parse the data to get latitude and longitude
      }

      return "No place name found";
    } catch (e) {
      return "Error: $e";
    }
  }

  Future<String> placeDetailFromId(String placeId) async {
    try {
      // Replace with the actual place ID

      final response = await http.get(
        Uri.parse(
            'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$apiKey'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        // Parse the data to get details about the place
      }

      return "No place name found";
    } catch (e) {
      return "Error: $e";
    }
  }

  Future<String> searchPlaceType(String query) async {
    try {
      final response = await http.get(
        Uri.parse(
            'https://maps.googleapis.com/maps/api/place/textsearch/json?query=$query&key=$apiKey'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        // Parse the data to get a list of places matching the query
        return data;
      }

      return "No place name found";
    } catch (e) {
      return "Error: $e";
    }
  }

  Future<String> direction(String from, String to) async {
    try {
      final response = await http.get(
        Uri.parse(
            'https://maps.googleapis.com/maps/api/directions/json?origin=$from&destination=$to&key=$apiKey'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        // Parse the data to get directions and routes
      }

      return "No place name found";
    } catch (e) {
      return "Error: $e";
    }
  }

  Future<List<Address>> _send(String url) async {
    //print("Sending $url...");
    final uri = Uri.parse(url);
    final request = await _httpClient.getUrl(uri);
    final response = await request.close();
    final responseBody = await utf8.decoder.bind(response).join();
    var data = jsonDecode(responseBody);

    var results = data["results"];

    if (results == null) return [];

    return results
        .map(_convertAddress)
        .map<Address>((map) => Address.fromMap(map))
        .toList();
  }

  /// convert google api response to Address
  /// [geometry] is the geometry to convert.
  /// example: { "location": { "lat": 40.714224, "lng": -73.961452 } }
  Map _convertCoordinates(dynamic geometry) {
    if (geometry == null) return {};

    var location = geometry["location"];
    if (location == null) return {};

    return {
      "latitude": location["lat"],
      "longitude": location["lng"],
    };
  }

  /// convert google api response to Address
  Map _convertAddress(dynamic data) {
    Map result = {};

    result["coordinates"] = _convertCoordinates(data["geometry"]);
    result["addressLine"] = data["formatted_address"];

    var addressComponents = data["address_components"];

    addressComponents.forEach((item) {
      List types = item["types"];

      if (types.contains("route")) {
        result["thoroughfare"] = item["long_name"];
      } else if (types.contains("street_number")) {
        result["subThoroughfare"] = item["long_name"];
      } else if (types.contains("country")) {
        result["countryName"] = item["long_name"];
        result["countryCode"] = item["short_name"];
      } else if (types.contains("locality")) {
        result["locality"] = item["long_name"];
      } else if (types.contains("postal_code")) {
        result["postalCode"] = item["long_name"];
      } else if (types.contains("postal_code")) {
        result["postalCode"] = item["long_name"];
      } else if (types.contains("administrative_area_level_1")) {
        result["adminArea"] = item["long_name"];
      } else if (types.contains("administrative_area_level_2")) {
        result["subAdminArea"] = item["long_name"];
      } else if (types.contains("sublocality") ||
          types.contains("sublocality_level_1")) {
        result["subLocality"] = item["long_name"];
      } else if (types.contains("premise")) {
        result["featureName"] = item["long_name"];
      }

      result["featureName"] = result["featureName"] ?? result["addressLine"];
    });

    return result;
  }
}
