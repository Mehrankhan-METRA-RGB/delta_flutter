mixin DeltaMetersConversions {
  /// Meters to other units
  // Meter to Inch
  double meterToInch(double meters) {
    return meters * 39.3701;
  }

  // Meter to Foot
  double meterToFoot(double meters) {
    return meters * 3.28084;
  }

  // Meter to Yard
  double meterToYard(double meters) {
    return meters * 1.09361;
  }

  // Meter to Mile
  double meterToMile(double meters) {
    return meters / 1609.34;
  }

  // Meter to Cape Foot
  double meterToCapeFoot(double meters) {
    // Replace with the appropriate conversion factor if known
    return meters; // Currently set to the same value (unknown conversion)
  }

  // Meter to Rod
  double meterToRod(double meters) {
    // Replace with the appropriate conversion factor if known
    return meters; // Currently set to the same value (unknown conversion)
  }

  // Meter to Angstrom
  double meterToAngstrom(double meters) {
    return meters * 1.0e10;
  }

  // Meter to Nanometer
  double meterToNanometer(double meters) {
    return meters * 1.0e9;
  }

  // Meter to Micron
  double meterToMicron(double meters) {
    return meters * 1.0e6;
  }

  // Meter to Centimeter
  double meterToCentimeter(double meters) {
    return meters * 100;
  }

  // Meter to Kilometer
  double meterToKilometer(double meters) {
    return meters / 1000;
  }

  // Meter to Light-year
  double meterToLightYear(double meters) {
    return meters / 9.461e15;
  }

  // Meter to Light-day
  double meterToLightDay(double meters) {
    return meters / 8.64e13;
  }

  // Meter to Light-hour
  double meterToLightHour(double meters) {
    return meters / 2.07e12;
  }

  // Meter to Light-minute
  double meterToLightMinute(double meters) {
    return meters / 1.24e11;
  }

  // Meter to Light-second
  double meterToLightSecond(double meters) {
    return meters / 7.461e9;
  }
}
