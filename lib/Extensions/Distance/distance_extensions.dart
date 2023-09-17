extension LengthConversion on num {
  // Inch (in)
  double get inchToInch => toDouble();
  double get inchToFoot => toDouble() / 12;
  double get inchToYard => toDouble() / 36;
  double get inchToMile => toDouble() / 63360;
  double get inchToCentimeter => toDouble() * 2.54;
  double get inchToMeter => toDouble() * 0.0254;
  double get inchToKilometer => toDouble() * 2.54e-5;
  double get inchToLightYear => toDouble() * 2.54e-10;
  double get inchToLightDay => toDouble() * 1.724e-8;
  double get inchToLightHour => toDouble() * 4.17e-7;
  double get inchToLightMinute => toDouble() * 2.5e-5;
  double get inchToLightSecond => toDouble() * 1.5e-6;

  // Foot (ft)
  double get footToInch => toDouble() * 12;
  double get footToFoot => toDouble();
  double get footToYard => toDouble() / 3;
  double get footToMile => toDouble() * 0.000189394;
  double get footToCentimeter => toDouble() * 30.48;
  double get footToMeter => toDouble() * 0.3048;
  double get footToKilometer => toDouble() * 0.0003048;
  double get footToLightYear => toDouble() * 2.07e-7;
  double get footToLightDay => toDouble() * 4.97e-6;
  double get footToLightHour => toDouble() * 2.98e-4;
  double get footToLightMinute => toDouble() * 1.79e-5;
  double get footToLightSecond => toDouble() * 1.079e-6;

  // Yard (yd)
  double get yardToInch => toDouble() * 36;
  double get yardToFoot => toDouble() * 3;
  double get yardToYard => toDouble();
  double get yardToMile => toDouble() * 0.000568182;
  double get yardToCentimeter => toDouble() * 91.44;
  double get yardToMeter => toDouble() * 0.9144;
  double get yardToKilometer => toDouble() * 0.0009144;
  double get yardToLightYear => toDouble() * 6.132e-7;
  double get yardToLightDay => toDouble() * 1.47e-5;
  double get yardToLightHour => toDouble() * 8.82e-4;
  double get yardToLightMinute => toDouble() * 5.29e-5;
  double get yardToLightSecond => toDouble() * 3.176e-6;

  // Mile (mi)
  double get mileToInch => toDouble() * 63360;
  double get mileToFoot => toDouble() * 5280;
  double get mileToYard => toDouble() * 1760;
  double get mileToMile => toDouble();
  double get mileToCentimeter => toDouble() * 160934;
  double get mileToMeter => toDouble() * 1609.34;
  double get mileToKilometer => toDouble() * 1.60934;
  double get mileToLightYear => toDouble() * 1.701e-13;
  double get mileToLightDay => toDouble() * 1.146e-11;
  double get mileToLightHour => toDouble() * 2.75e-10;
  double get mileToLightMinute => toDouble() * 1.65e-8;
  double get mileToLightSecond => toDouble() * 9.87e-10;

  // Cape Foot
  // Note: Conversion factor is unknown (Assumed equal to foot for the sake of documentation)

  // Rod
  // Note: Conversion factor is unknown (Assumed equal to rod for the sake of documentation)

  // Angstrom
  double get angstromToInch => toDouble() * 3.937e-9;
  double get angstromToFoot => toDouble() * 3.281e-10;
  double get angstromToYard => toDouble() * 1.0936e-10;
  double get angstromToMile => toDouble() * 6.214e-14;
  double get angstromToCentimeter => toDouble() * 0.00000001;
  double get angstromToMeter => toDouble() * 1e-10;
  double get angstromToKilometer => toDouble() * 1e-13;
  double get angstromToLightYear => toDouble() * 1.057e-24;
  double get angstromToLightDay => toDouble() * 7.14e-23;
  double get angstromToLightHour => toDouble() * 1.71e-21;
  double get angstromToLightMinute => toDouble() * 1.03e-19;
  double get angstromToLightSecond => toDouble() * 6.19e-18;

  // Nanometer (nm)
  double get nanometerToInch => toDouble() * 3.937e-8;
  double get nanometerToFoot => toDouble() * 3.281e-9;
  double get nanometerToYard => toDouble() * 1.0936e-9;
  double get nanometerToMile => toDouble() * 6.214e-13;
  double get nanometerToCentimeter => toDouble() * 0.0001;
  double get nanometerToMeter => toDouble() * 0.000001;
  double get nanometerToKilometer => toDouble() * 1e-9;
  double get nanometerToLightYear => toDouble() * 1.057e-21;
  double get nanometerToLightDay => toDouble() * 7.14e-20;
  double get nanometerToLightHour => toDouble() * 1.71e-18;
  double get nanometerToLightMinute => toDouble() * 1.03e-16;
  double get nanometerToLightSecond => toDouble() * 6.19e-15;

  // Micron (µm)
  double get micronToInch => toDouble() * 3.937e-5;
  double get micronToFoot => toDouble() * 3.281e-6;
  double get micronToYard => toDouble() * 1.0936e-6;
  double get micronToMile => toDouble() * 6.214e-10;
  double get micronToCentimeter => toDouble() * 0.01;
  double get micronToMeter => toDouble() * 0.000001;
  double get micronToKilometer => toDouble() * 1e-6;
  double get micronToLightYear => toDouble() * 1.057e-18;
  double get micronToLightDay => toDouble() * 7.14e-17;
  double get micronToLightHour => toDouble() * 1.71e-15;
  double get micronToLightMinute => toDouble() * 1.03e-13;
  double get micronToLightSecond => toDouble() * 6.19e-12;

  // Centimeter (cm)
  double get centimeterToInch => toDouble() * 0.3937;
  double get centimeterToFoot => toDouble() * 0.0328;
  double get centimeterToYard => toDouble() * 0.0109;
  double get centimeterToMile => toDouble() * 6.2137e-6;
  double get centimeterToCentimeter => toDouble();
  double get centimeterToMeter => toDouble() * 0.01;
  double get centimeterToKilometer => toDouble() * 1e-5;
  double get centimeterToLightYear => toDouble() * 1.057e-17;
  double get centimeterToLightDay => toDouble() * 7.14e-16;
  double get centimeterToLightHour => toDouble() * 1.71e-14;
  double get centimeterToLightMinute => toDouble() * 1.03e-12;
  double get centimeterToLightSecond => toDouble() * 6.19e-11;

  // Meter (m)
  double get meterToInch => toDouble() * 39.37;
  double get meterToFoot => toDouble() * 3.281;
  double get meterToYard => toDouble() * 1.094;
  double get meterToMile => toDouble() * 0.0006214;
  double get meterToCentimeter => toDouble() * 100;
  double get meterToMeter => toDouble();
  double get meterToKilometer => toDouble() * 0.001;
  double get meterToLightYear => toDouble() * 1.057e-16;
  double get meterToLightDay => toDouble() * 7.14e-15;
  double get meterToLightHour => toDouble() * 1.71e-13;
  double get meterToLightMinute => toDouble() * 1.03e-11;
  double get meterToLightSecond => toDouble() * 6.19e-10;

  // Kilometer (km)
  double get kilometerToInch => toDouble() * 39370.1;
  double get kilometerToFoot => toDouble() * 3280.84;
  double get kilometerToYard => toDouble() * 1093.61;
  double get kilometerToMile => toDouble() * 0.6214;
  double get kilometerToCentimeter => toDouble() * 100000;
  double get kilometerToMeter => toDouble() * 1000;
  double get kilometerToKilometer => toDouble();
  double get kilometerToLightYear => toDouble() * 1.057e-13;
  double get kilometerToLightDay => toDouble() * 7.14e-12;
  double get kilometerToLightHour => toDouble() * 1.71e-10;
  double get kilometerToLightMinute => toDouble() * 1.03e-8;
  double get kilometerToLightSecond => toDouble() * 6.19e-7;

  // Light-year
  double get lightYearToInch => toDouble() * 7.461e12;
  double get lightYearToFoot => toDouble() * 6.218e11;
  double get lightYearToYard => toDouble() * 1.057e13;
  double get lightYearToMile => toDouble() * 5.878e12;
  double get lightYearToCentimeter => toDouble() * 9.461e17;
  double get lightYearToMeter => toDouble() * 9.461e15;
  double get lightYearToKilometer => toDouble() * 9.461e12;
  double get lightYearToLightYear => toDouble();
  double get lightYearToLightDay => toDouble() * 6.76e7;
  double get lightYearToLightHour => toDouble() * 1.62e9;
  double get lightYearToLightMinute => toDouble() * 9.73e10;
  double get lightYearToLightSecond => toDouble() * 5.84e12;

  // Light-day
  double get lightDayToInch => toDouble() * 7.461e10;
  double get lightDayToFoot => toDouble() * 6.218e9;
  double get lightDayToYard => toDouble() * 1.057e10;
  double get lightDayToMile => toDouble() * 5.076e10;
  double get lightDayToCentimeter => toDouble() * 8.64e10;
  double get lightDayToMeter => toDouble() * 8.64e8;
  double get lightDayToKilometer => toDouble() * 8.64e5;
  double get lightDayToLightYear => toDouble() * 1.461e-2;
  double get lightDayToLightDay => toDouble();
  double get lightDayToLightHour => toDouble() * 2.4e4;
  double get lightDayToLightMinute => toDouble() * 1.44e6;
  double get lightDayToLightSecond => toDouble() * 8.64e7;

  // Light-hour
  double get lightHourToInch => toDouble() * 7.461e8;
  double get lightHourToFoot => toDouble() * 6.218e7;
  double get lightHourToYard => toDouble() * 1.057e8;
  double get lightHourToMile => toDouble() * 5.076e8;
  double get lightHourToCentimeter => toDouble() * 8.64e8;
  double get lightHourToMeter => toDouble() * 8.64e6;
  double get lightHourToKilometer => toDouble() * 8.64e3;
  double get lightHourToLightYear => toDouble() * 6.097e-4;
  double get lightHourToLightDay => toDouble() * 4.17e1;
  double get lightHourToLightHour => toDouble();
  double get lightHourToLightMinute => toDouble() * 6e3;
  double get lightHourToLightSecond => toDouble() * 3.6e4;

  // Light-minute
  double get lightMinuteToInch => toDouble() * 7.461e6;
  double get lightMinuteToFoot => toDouble() * 6.218e5;
  double get lightMinuteToYard => toDouble() * 1.057e6;
  double get lightMinuteToMile => toDouble() * 5.076e6;
  double get lightMinuteToCentimeter => toDouble() * 8.64e6;
  double get lightMinuteToMeter => toDouble() * 8.64e4;
  double get lightMinuteToKilometer => toDouble() * 8.64e1;
  double get lightMinuteToLightYear => toDouble() * 1.016e-5;
  double get lightMinuteToLightDay => toDouble() * 6.94e-1;
  double get lightMinuteToLightHour => toDouble() * 1.67e1;
  double get lightMinuteToLightMinute => toDouble();
  double get lightMinuteToLightSecond => toDouble() * 6e2;

  // Light-second
  double get lightSecondToInch => toDouble() * 7.461e4;
  double get lightSecondToFoot => toDouble() * 6.218e3;
  double get lightSecondToYard => toDouble() * 1.057e4;
  double get lightSecondToMile => toDouble() * 5.076e4;
  double get lightSecondToCentimeter => toDouble() * 8.64e4;
  double get lightSecondToMeter => toDouble() * 8.64e2;
  double get lightSecondToKilometer => toDouble() * 8.64e-1;
  double get lightSecondToLightYear => toDouble() * 1.016e-7;
  double get lightSecondToLightDay => toDouble() * 6.94e-5;
  double get lightSecondToLightHour => toDouble() * 1.67e-3;
  double get lightSecondToLightMinute => toDouble() * 1.0;
  double get lightSecondToLightSecond => toDouble();
}
