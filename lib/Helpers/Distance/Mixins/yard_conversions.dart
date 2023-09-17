mixin DeltaYards {
  /// Yards to other units
  // Yard to Inch
  double yardToInch(double yards) {
    return yards * 36.0;
  }

  // Yard to Foot
  double yardToFoot(double yards) {
    return yards * 3.0;
  }

  // Yard to Mile
  double yardToMile(double yards) {
    return yards / 1760.0;
  }

  // Yard to Cape Foot
  double yardToCapeFoot(double yards) {
    // Replace with the appropriate conversion factor if known
    return yards; // Currently set to the same value (unknown conversion)
  }

  // Yard to Rod
  double yardToRod(double yards) {
    // Replace with the appropriate conversion factor if known
    return yards; // Currently set to the same value (unknown conversion)
  }

  // Yard to Angstrom
  double yardToAngstrom(double yards) {
    return yards * 9.144e12;
  }

  // Yard to Nanometer
  double yardToNanometer(double yards) {
    return yards * 9.144e9;
  }

  // Yard to Micron
  double yardToMicron(double yards) {
    return yards * 9.144e6;
  }

  // Yard to Centimeter
  double yardToCentimeter(double yards) {
    return yards * 91.44;
  }

  // Yard to Meter
  double yardToMeter(double yards) {
    return yards * 0.9144;
  }

  // Yard to Kilometer
  double yardToKilometer(double yards) {
    return yards * 0.0009144;
  }

  // Yard to Light-year
  double yardToLightYear(double yards) {
    return yards / 8.22e15;
  }

  // Yard to Light-day
  double yardToLightDay(double yards) {
    return yards / 7.099e13;
  }

  // Yard to Light-hour
  double yardToLightHour(double yards) {
    return yards / 1.703e12;
  }

  // Yard to Light-minute
  double yardToLightMinute(double yards) {
    return yards / 1.022e11;
  }

  // Yard to Light-second
  double yardToLightSecond(double yards) {
    return yards / 6.132e9;
  }
}
