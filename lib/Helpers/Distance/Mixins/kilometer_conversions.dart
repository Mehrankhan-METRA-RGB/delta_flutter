mixin DeltaKiloMeters {
  /// Convert kilometers to other units
  // Kilometer to Inch
  double kilometerToInch(double kilometers) {
    return kilometers * 39370.1;
  }

  // Kilometer to Foot
  double kilometerToFoot(double kilometers) {
    return kilometers * 3280.84;
  }

  // Kilometer to Yard
  double kilometerToYard(double kilometers) {
    return kilometers * 1093.61;
  }

  // Kilometer to Mile
  double kilometerToMile(double kilometers) {
    return kilometers / 1.60934;
  }

  // Kilometer to Cape Foot
  double kilometerToCapeFoot(double kilometers) {
    // Replace with the appropriate conversion factor if known
    return kilometers; // Currently set to the same value (unknown conversion)
  }

  // Kilometer to Rod
  double kilometerToRod(double kilometers) {
    // Replace with the appropriate conversion factor if known
    return kilometers; // Currently set to the same value (unknown conversion)
  }

  // Kilometer to Angstrom
  double kilometerToAngstrom(double kilometers) {
    return kilometers * 1.0e13;
  }

  // Kilometer to Nanometer
  double kilometerToNanometer(double kilometers) {
    return kilometers * 1.0e12;
  }

  // Kilometer to Micron
  double kilometerToMicron(double kilometers) {
    return kilometers * 1.0e9;
  }

  // Kilometer to Centimeter
  double kilometerToCentimeter(double kilometers) {
    return kilometers * 1.0e5;
  }

  // Kilometer to Meter
  double kilometerToMeter(double kilometers) {
    return kilometers * 1000.0;
  }

  // Kilometer to Light-year
  double kilometerToLightYear(double kilometers) {
    return kilometers / 9.461e12;
  }

  // Kilometer to Light-day
  double kilometerToLightDay(double kilometers) {
    return kilometers / 8.64e10;
  }

  // Kilometer to Light-hour
  double kilometerToLightHour(double kilometers) {
    return kilometers / 2.07e9;
  }

  // Kilometer to Light-minute
  double kilometerToLightMinute(double kilometers) {
    return kilometers / 1.24e8;
  }

  // Kilometer to Light-second
  double kilometerToLightSecond(double kilometers) {
    return kilometers / 7.461e6;
  }
}
