mixin DeltaInches {
  /// Inches to other units
  // Inch to Foot
  double inchToFoot(double inches) {
    return inches / 12.0;
  }

  // Inch to Yard
  double inchToYard(double inches) {
    return inches / 36.0;
  }

  // Inch to Mile
  double inchToMile(double inches) {
    return inches / 63360.0;
  }

  // Inch to Cape Foot
  double inchToCapeFoot(double inches) {
    // Replace with the appropriate conversion factor if known
    return inches; // Currently set to the same value (unknown conversion)
  }

  // Inch to Rod
  double inchToRod(double inches) {
    // Replace with the appropriate conversion factor if known
    return inches; // Currently set to the same value (unknown conversion)
  }

  // Inch to Angstrom
  double inchToAngstrom(double inches) {
    return inches * 2.54e8;
  }

  // Inch to Nanometer
  double inchToNanometer(double inches) {
    return inches * 2.54e7;
  }

  // Inch to Micron
  double inchToMicron(double inches) {
    return inches * 25400.0;
  }

  // Inch to Centimeter
  double inchToCentimeter(double inches) {
    return inches * 2.54;
  }

  // Inch to Meter
  double inchToMeter(double inches) {
    return inches * 0.0254;
  }

  // Inch to Kilometer
  double inchToKilometer(double inches) {
    return inches * 2.54e-5;
  }

  // Inch to Light-year
  double inchToLightYear(double inches) {
    return inches / 7.461e17;
  }

  // Inch to Light-day
  double inchToLightDay(double inches) {
    return inches / 6.451e15;
  }

  // Inch to Light-hour
  double inchToLightHour(double inches) {
    return inches / 1.548e14;
  }

  // Inch to Light-minute
  double inchToLightMinute(double inches) {
    return inches / 9.29e12;
  }

  // Inch to Light-second
  double inchToLightSecond(double inches) {
    return inches / 5.575e11;
  }
}
