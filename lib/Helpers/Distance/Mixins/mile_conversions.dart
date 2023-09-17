mixin DeltaMiles {
  /// Miles to other units
  // Mile to Inch
  double mileToInch(double miles) {
    return miles * 63360.0;
  }

  // Mile to Foot
  double mileToFoot(double miles) {
    return miles * 5280.0;
  }

  // Mile to Yard
  double mileToYard(double miles) {
    return miles * 1760.0;
  }

  // Mile to Cape Foot
  double mileToCapeFoot(double miles) {
    // Replace with the appropriate conversion factor if known
    return miles; // Currently set to the same value (unknown conversion)
  }

  // Mile to Rod
  double mileToRod(double miles) {
    // Replace with the appropriate conversion factor if known
    return miles; // Currently set to the same value (unknown conversion)
  }

  // Mile to Angstrom
  double mileToAngstrom(double miles) {
    return miles * 1.701e13;
  }

  // Mile to Nanometer
  double mileToNanometer(double miles) {
    return miles * 1.701e12;
  }

  // Mile to Micron
  double mileToMicron(double miles) {
    return miles * 1.701e9;
  }

  // Mile to Centimeter
  double mileToCentimeter(double miles) {
    return miles * 1.701e7;
  }

  // Mile to Meter
  double mileToMeter(double miles) {
    return miles * 1609.34;
  }

  // Mile to Kilometer
  double mileToKilometer(double miles) {
    return miles * 1.60934;
  }

  // Mile to Light-year
  double mileToLightYear(double miles) {
    return miles / 5.879e12;
  }

  // Mile to Light-day
  double mileToLightDay(double miles) {
    return miles / 5.076e10;
  }

  // Mile to Light-hour
  double mileToLightHour(double miles) {
    return miles / 1.2216e9;
  }

  // Mile to Light-minute
  double mileToLightMinute(double miles) {
    return miles / 7.33e7;
  }

  // Mile to Light-second
  double mileToLightSecond(double miles) {
    return miles / 4.398e6;
  }
}
