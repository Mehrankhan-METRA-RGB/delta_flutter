/// Define a class to represent a time names in a day
class TimeName {
  // The name of the time
  String name;
  // The start hour of the time
  int startHour;
  // The end hour of the time
  int endHour;

  // Constructor to initialize the fields
  TimeName(this.name, this.startHour, this.endHour);

  // A method to check if a given hour belongs to this time name
  bool contains(int hour) {
    return hour >= startHour && hour <= endHour;
  }
}

/// Create a list of time names in a day
List<TimeName> timeNames = [
  TimeName('Early morning', 4, 6),
  TimeName('Morning', 7, 11),
  TimeName('Noon', 12, 12),
  TimeName('Afternoon', 13, 17),
  TimeName('Evening', 18, 20),
  TimeName('Night', 21, 23),
  TimeName('Midnight', 0, 3),
];

/// A function to get the time name for a given hour
String getTimeName(int hour) {
  // Loop through the list and find the matching time name
  for (TimeName tn in timeNames) {
    if (tn.contains(hour)) {
      return tn.name;
    }
  }
  // throw error if  entry value is below 0 and above 23
  throw UnsupportedError("Hours range in 24 hours timing is 0 to 23"
      "So make sure your entry value must be between in the given time range.");
}
