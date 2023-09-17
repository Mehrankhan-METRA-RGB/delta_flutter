mixin DeltaCentiMeters {
  /// Centimeters to other units

  // Centimeter to Inch
  double centimeterToInch(double centimeters) {
    return centimeters / 2.54;
  }

  // Centimeter to Foot
  double centimeterToFoot(double centimeters) {
    return centimeters / 30.48;
  }

  // Centimeter to Yard
  double centimeterToYard(double centimeters) {
    return centimeters / 91.44;
  }

  // Centimeter to Mile
  double centimeterToMile(double centimeters) {
    return centimeters / 160934.0;
  }

  // Centimeter to Cape Foot
  double centimeterToCapeFoot(double centimeters) {
    // Replace with the appropriate conversion factor if known
    return centimeters; // Currently set to the same value (unknown conversion)
  }

  // Centimeter to Rod
  double centimeterToRod(double centimeters) {
    // Replace with the appropriate conversion factor if known
    return centimeters; // Currently set to the same value (unknown conversion)
  }

  // Centimeter to Angstrom
  double centimeterToAngstrom(double centimeters) {
    return centimeters * 1.0e8;
  }

  // Centimeter to Nanometer
  double centimeterToNanometer(double centimeters) {
    return centimeters * 1.0e7;
  }

  // Centimeter to Micron
  double centimeterToMicron(double centimeters) {
    return centimeters * 1.0e4;
  }

  // Centimeter to Meter
  double centimeterToMeter(double centimeters) {
    return centimeters / 100;
  }

  // Centimeter to Kilometer
  double centimeterToKilometer(double centimeters) {
    return centimeters / 100000;
  }

  // Centimeter to Light-year
  double centimeterToLightYear(double centimeters) {
    return centimeters / 9.461e17;
  }

  // Centimeter to Light-day
  double centimeterToLightDay(double centimeters) {
    return centimeters / 8.64e15;
  }

  // Centimeter to Light-hour
  double centimeterToLightHour(double centimeters) {
    return centimeters / 2.07e14;
  }

  // Centimeter to Light-minute
  double centimeterToLightMinute(double centimeters) {
    return centimeters / 1.24e13;
  }

  // Centimeter to Light-second
  double centimeterToLightSecond(double centimeters) {
    return centimeters / 7.461e11;
  }
}
