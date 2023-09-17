import 'dart:math';

import 'package:delta/Models/coordinates_model.dart';

class DeltaArea {
  static const double _pie = 3.141592653589793;
  static const double _earthRadius = 6378.16;
  static double _radians(double x) => x * _pie / 180;

  ///In KM
  double findDisplacement({
    required DeltaCoordinate from,
    required DeltaCoordinate to,
  }) {
    double degLon = _radians(to.longitude - from.longitude);
    double degLat = _radians(to.latitude - from.latitude);

    double a = (sin(degLat / 2) * sin(degLat / 2)) +
        cos(_radians(from.latitude)) *
            cos(_radians(to.latitude)) *
            (sin(degLon / 2) * sin(degLon / 2));
    double angle = 2 * atan2(sqrt(a), sqrt(1 - a));
    return angle * _earthRadius;
  }

  /// Calculate distance using Haversine formula
  double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
    const double radiusOfEarth = 6371.0; // Earth's radius in kilometers

    // Convert latitude and longitude from degrees to radians
    lat1 = _radians(lat1);
    lon1 = _radians(lon1);
    lat2 = _radians(lat2);
    lon2 = _radians(lon2);

    // Haversine formula
    double dlon = lon2 - lon1;
    double dlat = lat2 - lat1;
    double a =
        pow(sin(dlat / 2), 2) + cos(lat1) * cos(lat2) * pow(sin(dlon / 2), 2);
    double c = 2 * atan2(sqrt(a), sqrt(1 - a));
    double distance = radiusOfEarth * c;

    return distance; // Distance in kilometers
  }

  ///You can use simple trigonometric calculations. You'll need to specify
  ///the radius of the circle, the number of points you want on the circle,
  /// and the center point coordinates.
  List<DeltaCoordinate> circleCoordinates(
      DeltaCoordinate center, double radius, int numPoints) {
    final List<DeltaCoordinate> points = [];
    final double angleIncrement = 2 * pi / numPoints;

    for (int i = 0; i < numPoints; i++) {
      final double angle = i * angleIncrement;
      final double x = center.latitude + radius * cos(angle);
      final double y = center.longitude + radius * sin(angle);
      points.add(DeltaCoordinate(x, y));
    }

    return points;
  }

  ///Finding the area of a zigzag shape (polygon) defined by its
  /// coordinates points can be achieved using the shoelace formula
  /// or by breaking the shape into triangles and summing their areas.
  /// Here, I'll explain how to use the shoelace formula, which works
  /// for any simple polygon (convex or concave). You'll need to provide
  /// the vertices of the zigzag shape in order.
  ///
  ///
  /// First, you need to calculate the area of the zigzag shape using the
  /// shoelace formula, which is based on the coordinates of the vertices.
  /// Here's a Dart function to compute the area of a zigzag shape:

  double calculateZigzagArea(List<Point<double>> vertices) {
    int numVertices = vertices.length;
    double sum1 = 0;
    double sum2 = 0;

    for (int i = 0; i < numVertices; i++) {
      final Point<double> current = vertices[i];
      final Point<double> next = vertices[(i + 1) % numVertices];

      sum1 += (current.x * next.y);
      sum2 += (current.y * next.x);
    }

    return 0.5 * (sum1 - sum2).abs();
  }

  ///To calculate the area of a circle, you can use the following formula:
  ///
  /// Area=π⋅r2
  ///
  /// Where:
  ///
  /// π (Pi) is a mathematical constant approximately equal to 3.14159.
  ///
  ///
  /// r is the radius of the circle.
  double calculateCircleArea(double radius) {
    return _pie * radius * radius;
  }

  ///To calculate the area of a square, you can use the following formula:
  ///
  /// Area=side×side
  ///
  /// Where:
  ///
  /// "side" represents the length of one side of the square.
  double calculateSquareArea(double sideLength) {
    return sideLength * sideLength;
  }

  ///To calculate the area of a rectangle, you can use the following formula:
  ///
  /// Area=Length×Width
  ///
  /// Where:
  ///
  /// "Length" represents the length of the rectangle.
  ///
  /// "Width" represents the width of the rectangle.
  double calculateRectangleArea(double length, double width) {
    return length * width;
  }

  ///To calculate the area of a triangle, you can use the following formula:
  ///
  /// Area=2/1×Base×Height
  ///
  /// Where:
  ///
  /// "Base" represents the length of the base of the triangle.
  ///
  /// "Height" represents the height of the triangle, which is the perpendicular
  /// distance from the base to the opposite vertex.
  double calculateTriangleArea(double base, double height) {
    return 0.5 * base * height;
  }

  /// The area of a right-angled triangle can be calculated using the following formula:
  ///
  /// Area=(2/1)×Base×Height
  ///
  /// Where:
  ///
  /// "Base" represents the length of the base of the right-angled triangle.
  ///
  /// "Height" represents the height of the right-angled triangle, which is the
  /// perpendicular distance from the base to the right-angled vertex (the vertex
  /// where the right angle is formed).

  double calculateRightAngleTriangleArea(double base, double height) {
    return 0.5 * base * height;
  }

  /// To calculate the area of an equilateral triangle, you can use the following formula:
  ///
  /// Area=(Sqrt(3)/4)×Side Length2

  double calculateEquilateralTriangleArea(double sideLength) {
    return (sqrt(3) / 4) * sideLength * sideLength;
  }

// In this code, we define a calculateDistance function that takes the latitude and longitude of two points as input and calculates the distance between them using the Haversine formula. The result is in kilometers.
  //
  // Make sure to replace the latitude and longitude values with the coordinates of the two points you want to find the displacement between.

  // List<List<double>> getIntermediateCoordinates(
  //   double startLat,
  //   double startLon,
  //   double endLat,
  //   double endLon,
  //   int numberOfPoints,
  // ) {
  //   List<List<double>> intermediateCoordinates = [];
  //
  //   // Convert start and end coordinates from degrees to radians
  //   double startLatRad = radians(startLat);
  //   double startLonRad = radians(startLon);
  //   double endLatRad = radians(endLat);
  //   double endLonRad = radians(endLon);
  //
  //   // Calculate the distance between the start and end coordinates using Haversine formula
  //   double distance = calculateDistance(startLat, startLon, endLat, endLon);
  //
  //   // Calculate the step size for interpolation
  //   double step = distance / numberOfPoints;
  //
  //   // Interpolate intermediate points along the path
  //   for (int i = 0; i < numberOfPoints; i++) {
  //     double fraction =
  //         i / (numberOfPoints - 1); // Fractional position along the path
  //     double intermediateLat = lerpDouble(startLatRad, endLatRad, fraction);
  //     double intermediateLon = lerpDouble(startLonRad, endLonRad, fraction);
  //
  //     // Convert back to degrees
  //     intermediateLat = degrees(intermediateLat);
  //     intermediateLon = degrees(intermediateLon);
  //
  //     intermediateCoordinates.add([intermediateLat, intermediateLon]);
  //   }
  //
  //   return intermediateCoordinates;
  // }

// Helper function to calculate distance (as shown in the previous response)
}
