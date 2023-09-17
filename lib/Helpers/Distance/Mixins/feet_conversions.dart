mixin DeltaFeet {
  /// Feet to other units
  // Foot to Inch
  double footToInch(double feet) {
    return feet * 12.0;
  }

  // Foot to Yard
  double footToYard(double feet) {
    return feet / 3.0;
  }

  // Foot to Mile
  double footToMile(double feet) {
    return feet / 5280.0;
  }

  // Foot to Cape Foot
  double footToCapeFoot(double feet) {
    // Replace with the appropriate conversion factor if known
    return feet; // Currently set to the same value (unknown conversion)
  }

  // Foot to Rod
  double footToRod(double feet) {
    // Replace with the appropriate conversion factor if known
    return feet; // Currently set to the same value (unknown conversion)
  }

  // Foot to Angstrom
  double footToAngstrom(double feet) {
    return feet * 3.048e10;
  }

  // Foot to Nanometer
  double footToNanometer(double feet) {
    return feet * 3.048e8;
  }

  // Foot to Micron
  double footToMicron(double feet) {
    return feet * 304800.0;
  }

  // Foot to Centimeter
  double footToCentimeter(double feet) {
    return feet * 30.48;
  }

  // Foot to Meter
  double footToMeter(double feet) {
    return feet * 0.3048;
  }

  // Foot to Kilometer
  double footToKilometer(double feet) {
    return feet * 0.0003048;
  }

  // Foot to Light-year
  double footToLightYear(double feet) {
    return feet / 3.104e16;
  }

  // Foot to Light-day
  double footToLightDay(double feet) {
    return feet / 2.678e14;
  }

  // Foot to Light-hour
  double footToLightHour(double feet) {
    return feet / 6.421e12;
  }

  // Foot to Light-minute
  double footToLightMinute(double feet) {
    return feet / 3.853e11;
  }

  // Foot to Light-second
  double footToLightSecond(double feet) {
    return feet / 2.312e10;
  }
}
