# Delta

The `delta` package is a powerful and flexible Flutter library designed to simplify and enhance the development of interactive and data-driven applications. It offers a wide range of comprehensive set of utilities and extensions for Flutter developers, simplifying tasks such as screen adaptation, length conversions, string manipulation, and country information retrieval. With this package, developers can streamline common Flutter app development challenges and enhance their applications with ease.
## Features
`delta` provides a collection of customizable widgets that go beyond the standard Flutter widgets, enabling you to create dynamic and engaging UI components effortlessly.
 - Use `isMobile` and `isTablet` extension on `MediaQueryData` it will detect device type
- Use  **American** and **Indian** Numeric Units
- Use `DateTime` Format designs for displaying in 24 different ways
- 


## Installation
To use this package, add `delta` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  delta: ^0.0.3

```

## Usage:

```dart
import 'package:delta/delta.dart';
```

### Numeral Counts Formats
-----------
| USAGE                           | Preview                                        | Description                                                                                                                                                                                            |
|---------------------------------|------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `45000.shortSINumeral`          | 45k                                            | Convert  numeric to readable String  i.e: 45000 to String 45k, 6500000 to String 6.5M etc                                                                                                              |
| `2390051100.longSINumeral`      | 2 Billion 390 Million 51 Thousand 100          | Convert  numeric to full readable String numeral names                                                                                                                                                 |
| `2390000000.shortIndianNumeral` | 2.39 Arab                                      | These terms is primarily used in the Indian subcontinent, including Pakistan, India, Bangladesh, Nepal, and Sri Lanka. It represents ten million (10,000,000). For example, 2 crore equals 20,000,000. |
| `2390900977.longIndianNumeral`  | 2 Arab 39 crore 9 lakh 9 hundred seventy seven | These terms is primarily used in the Indian subcontinent, including Pakistan, India, Bangladesh, Nepal, and Sri Lanka. It represents ten million (10,000,000). For example, 2 crore equals 20,000,000. |






###  Check device type Extensions
_Works on `BuildContext`_
#### `context.isMobile`

- **Description**: Returns `true` if the screen is determined to be a mobile device based on its diagonal size.

#### `context.isTablet`

- **Description**: Returns `true` if the screen is determined to be a tablet device based on its diagonal size.

 


### Date Formats
-----------
| USAGE                            | Preview                                                         | Description                                                                                                                                                                                                                                                                                                                                                                                     |
|----------------------------------|-----------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `DateTime.now().DATE`            | 3,Sep 2023                                                      | In many regions of the world, including Pakistan, United States and India, it's more common to see date formats like "September 3, 2023" or "3rd September 2023" in written and formal communication. These formats clearly specify the month, day, and year, making them less prone to misinterpretation.                                                                                      |
| `DateTime.now().DMY`             | 03-09-2023                                                      | In Pakistan, the commonly used date format is "dd-mm-yyyy," which means the day comes first, followed by the month, and then the year. So, "03-09-2023" represents September 3, 2023, in the Pakistani date format.                                                                                                                                                                             |
| `DateTime.now().slash_DMY`       | 03/09/2023                                                      | In Pakistan, The "dd/mm/yyyy" format is more commonly used in official documents, business transactions, and written communication.                                                                                                                                                                                                                                                             |
| `DateTime.now().HMS_12`          | 3:56:55 PM                                                      | 12 Hour Time format with seconds                                                                                                                                                                                                                                                                                                                                                                |
| `DateTime.now().HMS_24`          | 15:56:55                                                        | 24 Hour Time format with seconds                                                                                                                                                                                                                                                                                                                                                                |
| `DateTime.now().HM_12`           | 3:56 PM                                                         | 12 Hour Time format                                                                                                                                                                                                                                                                                                                                                                             |
| `DateTime.now().HM_24`           | 15:56                                                           | 24 Hour Time format                                                                                                                                                                                                                                                                                                                                                                             |
| `DateTime.now().HMMDY`           | 9:12 AM on May 9, 2023                                          | The date format "May 9, 2023" follows the Month-Day-Year order, which is common in the United States.                                                                                                                                                                                                                                                                                           |
| `DateTime.now().S_UTC_MDY`       | 41 seconds Evening (PKT) on Sep 3, 2023                         | Eastern Canada: Parts of eastern Canada, including cities like Toronto, Ottawa, and Montreal, also <br/>observe Eastern Standard Time during the standard time period.                                                                                                                                                                                                                          |
| `DateTime.now().ABSOLUTE_FB`     | Sep 3, 2023 at 7:41 PM                                          | Facebook allows users to post content with dates and times in various formats, including the format <br/> "Sep 3, 2023 at 7:41 PM." This format is commonly used in English-speaking countries and is user-friendly, making it easy for people to understand when the content was posted or when an event is scheduled.                                                                         |
| `DateTime.now().DHMS`            | Sun at 7:56:55 PM                                               | It is used in various contexts, including scheduling, appointments, event announcements, and other<br/> written or spoken communications to provide a clear and unambiguous reference to a specific time.                                                                                                                                                                                       |
| `DateTime.now().timeAgoString`   | Last month  (current DateTime is 2023-09-03 19:59:10)           | This is a time difference format used in various cases Like showing Notifications in app or other <br/>relevant data,  show difference in the given String formats i.e: Last month, A minute ago, Half hour ago, Yesterday etc.                                                                                                                                                                 |
| `DateTime.now().timeAgoNumeric`  | 2 months ago  (current DateTime is 2023-09-03 19:59:10)         | This is a time difference format used in various cases Like showing Notifications in app or other <br/>relevant data,  show difference in the given Numeric formats i.e: 2 month ago, 5 minute ago, Half hour ago, 1 day ago, 6 hours ago etc.                                                                                                                                                  |
| `DateTime.now().SHMMDY`          | 31 seconds after 8:13 PM on Aug 4, 2023                         | It's a clear and understandable way to represent a particular moment in time, especially when precision is required, such as in legal documents, historical records, or event scheduling. While the format is not unique to a specific region or country, it's widely accepted wherever the 12-hour clock system and the Gregorian calendar are in use                                          |
| `DateTime.now().emailDate`       | Fri, 4 Aug 2023 8:19:4 PM                                       | This is a standard for email messages that includes a date and time. It uses a format like `Fri, 4 Aug 2023 8:19:4 PM` to represent the date and time.                                                                                                                                                                                                                                          |
| `DateTime.now().longUSDateTime`  | Fri, Aug 4, 2023 20:21:1 PKT                                    | Long date and time: This format displays the date and time using the long format specified in the regional settings. For example, in the United States, this format is typically “dddd, MMMM dd, yyyy h:mm:ss tt”                                                                                                                                                                               |
| `DateTime.now().shortUSDateTime` | 8/4/2023 23:32 PKT                                              | Short date and time: This format displays the date and time using the short format specified in the regional settings. For example, in the United States, this format is typically “M/d/yyyy h:mm tt”.                                                                                                                                                                                          |
| `DateTime.now().macOSDateTime`   | Fri 4 Aug  11:35 PM                                             | The date and time format "Sun 27 Aug 11:30 PM" appears to be in a relatively standard and commonly used format in macOS for displaying dates and times in a readable, human-friendly way. macOS allows you to customize date and time formats to a certain extent, but this particular format doesn't require extensive customization and is typically available as one of the default options. |
| `DateTime.now().dayTimeName`     | Night                                                           | Determines the time of day based on the given hour.                                                                                                                                                                                                                                                                                                                                             |
| `DateTime.now().isLeapYear`      | false                                                           | A leap year is a year with an extra day—February 29—which is added nearly every four years to the calendar year. In an ordinary year, there are 365 days in the year, but in a leap year, there are 366 days. The extra day is added to the calendar every four years so that our calendar stays synchronized with the astronomical seasons.                                                    |
| `DateTime.now().iso801`          | Night PKT Aug 4, 2023                                           | Variation of the ISO 8601 standard, which is used by HTML, which represents a global date and time string.                                                                                                                                                                                                                                                                                      |
| `DateTime.now().hmAndSeconds`    | 1:53 PM and 23s                                                 | The time format "hh:mm a 'and' ss 's'" is not a widely used standard format for representing time. It appears to be a custom or specific format, possibly used in informal or unique contexts. Such formats may be used in creative writing, storytelling, or in specialized applications where a unique representation of time is required for a particular purpose.                           |
| `DateTime.now().firebase`        | 4 August 2023 at 23:57:36 PKT 5                                 | It is the format used in Firebase Console only for the sake of showing timeStamp in Firebase FireStore                                                                                                                                                                                                                                                                                          |



### List extensions

The `Unique` extension provides several utility functions that can be used with lists in Dart to perform common operations such as obtaining unique elements, filtering, mapping, custom sorting, pagination, and grouping items based on specific criteria.


#### `unique`

`List<E> unique([Id Function(E element)? id, bool inPlace = true])`
Returns a list of unique elements from the original list. You can specify an optional id function to determine uniqueness based on a specific property of the elements. The inPlace parameter determines whether the operation is performed in place or on a copy of the original list.

Example:

```dart
 
List<int> numbers = [1, 2, 2, 3, 4, 4, 5, 5, 5];

// Get unique elements
List<int> uniqueNumbers = numbers.unique();
// print('Unique numbers: $uniqueNumbers'); 
// Output: Unique numbers: [1, 2, 3, 4, 5]
```



#### `filter`

` List<E> filter(bool Function(E) test)`
Returns a list containing elements that satisfy the given test function. This function simplifies the process of filtering elements from a list based on a specific condition.

Example:

```dart
 
List<int> numbers = [1, 2, 3, 4, 5];

// Filter even numbers
List<int> evenNumbers = numbers.filter((number) => number.isEven);
// print('Even numbers: $evenNumbers'); // Output: Even numbers: [2, 4]

```

#### `mapIndexed`
`List<R> mapIndexed<R>(R Function(int index, E item) f);`
Maps each element in the list to a new value using the provided function. The function f takes both the index and the current item as parameters, allowing you to map elements while also knowing their positions in the list.

Example:

```dart
 List<String> fruits = ['apple', 'banana', 'cherry'];

// Map elements with their indices
List<String> indexedFruits = fruits.mapIndexed((index, fruit) => '$index: $fruit');
  // Output: Indexed fruits: [0: apple, 1: banana, 2: cherry]
```
#### `customSort`

`List<E> customSort(int Function(E a, E b) compare)`
Sorts the list using a custom comparison function. This function enables you to perform complex sorting based on specific properties of the elements.

Example:

```dart
 class Person {
String name;
int age;
Person(this.name, this.age);
}

List<Person> people = [
Person('Alice', 30),
Person('Bob', 25),
Person('Charlie', 35),
];

// Sort people by age in ascending order
List<Person> sortedPeople = people.customSort((a, b) => a.age.compareTo(b.age));
// print('Sorted people: $sortedPeople');

```
#### `paginate`
`List<E> paginate(int page, int itemsPerPage)`
Performs pagination on the list, returning a sublist of elements for a specific page and number of items per page. This is useful when working with paginated data.

Example:

```dart
 
List<int> allNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];

// Get items for page 2 with 3 items per page
List<int> page2Items = allNumbers.paginate(2, 3);
// print('Page 2 items: $page2Items'); // Output: Page 2 items: [4, 5, 6]
```
#### `groupBy`

`Map<K, List<E>> groupBy<K>(K Function(E item) keyFunction)`
Groups elements in the list based on a key derived from each element using the provided keyFunction. This extension simplifies the process of creating a map where keys correspond to specific properties of the elements, and values are lists of elements with the same key.

Example:

```dart
 class Person {
String name;
String city;
Person(this.name, this.city);
}

List<Person> people = [
Person('Alice', 'New York'),
Person('Bob', 'San Francisco'),
Person('Charlie', 'New York'),
];

// Group people by city
Map<String, List<Person>> groupedPeople = people.groupBy((person) => person.city);
// print('Grouped people: $groupedPeople');
```



### Dart Extensions for String Manipulation:

#### 1: `random`

The `random` extension generates a randomly unorganized string with a specified length.

**Example:**

```dart
String randomString = "hello".random(length: 8);
// Output: "olhloehl"
```


#### 2: `addThousandsSeparator`
The `addThousandsSeparator` extension adds thousands separators to a number string.

**Example:**
```dart
String formattedNumber = "1234567890".addThousandsSeparator();
// Output: "1,234,567,890"
```


#### 3: `isValidEmail`
The `isValidEmail` extension validates if a string is a valid email address.

**Example:**
```dart
bool isValid = "example@email.com".isValidEmail();
// Output: true
```



#### 4: `toSnakeCase`
The `toSnakeCase` extension converts a string to snake_case.

**Example:**

```dart
 String snakeCase = "HelloWorld".toSnakeCase();
// Output: "hello_world"
```

#### 5: `toKebabCase`
The `toKebabCase` extension converts a string to kebab-case.

**Example:**

```dart
 String kebabCase = "HelloWorld".toKebabCase();
// Output: "hello-world"
```


#### 6: `capitalizeFirstLetter`
The `capitalizeFirstLetter` extension capitalizes the first letter of a string.

**Example:**

```dart
 String capitalized = "word".capitalizeFirstLetter();
// Output: "Word"

```

#### 7: `capitalizeEachWord`
The `capitalizeEachWord` extension capitalizes the first letter of each word in a string.

**Example:**

```dart
 String capitalizedWords = "hello world".capitalizeEachWord();
// Output: "Hello World"
  ```

#### 8: `truncate`
The `truncate` extension truncates a string to a specified length and adds an ellipsis if it exceeds that length.

**Example:**

```dart
 String truncatedText = "This is a long text.".truncate(10);
// Output: "This is a..."
```
#### 9: `findUrls`
The `findUrls` extension finds URLs within a text using regular expressions.

**Example:**

```dart
 String longText = "Visit our website at https://example.com.";
List<String> urls = longText.findUrls();
// Output: ["https://example.com"]
```

#### 10: `findPhoneNumbers`
The `findPhoneNumbers` extension finds phone numbers in various formats within a text using regular expressions.

**Example:**

```dart
 String textWithPhoneNumbers = "Call us at (555) 555-5555 or 123-456-7890.";
List<String> phoneNumbers = textWithPhoneNumbers.findPhoneNumbers();
// Output: ["(555) 555-5555", "123-456-7890"]

```

#### 11: `censorWords`
The `censorWords` extension censors bad words in a text based on a list of bad words. The list of bad words must be provided as an argument.

**Example:**

```dart
 String textWithCensoredWords = "This is a bad word: ****.";
List<String> censoredWords = textWithCensoredWords.censorWords(censors: ["bad"]);
// Output: "This is a bad word: ****."
```
#### 12: `findCoordinates`
The `findCoordinates` extension finds coordinate pairs within a text using regular expressions.

**Example:**

```dart
 String textWithCoordinates = "Coordinates: (40.7128, -74.0060) and (34.0522, -118.2437).";
List<String> coordinates = textWithCoordinates.findCoordinates;
// Output: ["(40.7128, -74.0060)", "(34.0522, -118.2437)"]
```
#### 13: `countLetter`
The `countLetter` extension counts the occurrences of a specific single letter within a text.

**Example:**

```dart
 String longText = "This is an example text with some 'a' letters.";
int count = longText.countLetter("a");
// Output: 2
```
#### 14: `countLetters`
The `countLetters` extension counts the occurrences of a specific sequence of letters within a text.

**Example:**

```dart
 String longText = "This is an example text with 'ab' letters and 'ab' words.";
int count = longText.countLetters("ab");
// Output: 2
```
#### 15: `countWord`
The `countWord` extension counts the occurrences of a specific word within a text.

**Example:**

```dart
 String longText = "This is an example text with multiple 'example' words.";
int count = longText.countWord("example");
// Output: 2
```





### Length  conversions

The **`DeltaLength`** class is a powerful utility that offers an extensive array of methods for seamless length conversions across a wide spectrum of units. With support for units ranging from the commonplace `centimeters`, `inches`, `feet`, `yards`, and `miles` to the minuscule angstroms, `nanometers`, and `microns`, as well as the astronomical `meters`, `kilometers`, `light-years`, `light-days`, `light-hours`, `light-minutes`, and `light-seconds`, this class empowers developers to effortlessly tackle diverse length conversion challenges.

Whether you're dealing with everyday measurements or delving into the intricacies of the cosmos, the DeltaLength class serves as a versatile toolset for precise and reliable length conversions in your Dart applications.

#### Usage
When leveraging the `DeltaLength` class for length conversions, there is no need to create separate instances. Instead, you can directly access its functionality via the singleton class `Delta`, which encapsulates a single instance of `data` and property `length` for length-related operations.

This streamlined approach simplifies your code, making it more efficient and concise. By calling the `DeltaLength` methods directly from the `Delta` singleton instance, you can seamlessly perform a wide range of length conversions with elegance and precision in your Dart applications by calling `Delta.data.length`.

*Example:*



```dart

void main() {
  double centimeters = 100.0;
  
///Using Single instance Delta class
///Provides a tons of methods

   double inches = Delta.data.length.centimeterToInch(centimeters);
  double feet = Delta.data.length.centimeterToFoot(centimeters);
  
  print('$centimeters centimeters is equal to:');
  print('$inches inches');
  print('$feet feet');
}
```





### DeltaArea Class

The `DeltaArea` class provides various utility methods for performing calculations related to geographic areas and shapes. It includes functions for finding displacement between coordinates, calculating areas of different shapes (e.g., circle, square, triangle), and generating coordinates for circular paths.

**Methods**

#### `findDisplacement`

```dart
double findDisplacement({
  required DeltaCoordinate from,
  required DeltaCoordinate to,
});
//Calculates the displacement (distance) between two geographical coordinates in kilometers using the Haversine formula.
```
#### `calculateDistance`
```dart
 double calculateDistance(double lat1, double lon1, double lat2, double lon2);
// Calculates the distance between two sets of latitude and longitude coordinates using the Haversine formula. Returns the distance in kilometers.
```
#### `circleCoordinates`
```dart
 List<DeltaCoordinate> circleCoordinates(
  DeltaCoordinate center,
  double radius,
  int numPoints,
);
//Generates a list of geographical coordinates representing points evenly distributed around a circular path with a specified center, radius, and the number of points.
```
#### `calculateZigzagArea`
``` dart
 double calculateZigzagArea(List<Point<double>> vertices)
//Calculates the area of a zigzag-shaped polygon defined by a list of vertices using the shoelace formula. Returns the area as a double value.
```
#### `calculateCircleArea`
```dart
 double calculateCircleArea(double radius);
//Calculates the area of a circle given its radius. Returns the area as a double value.
```
#### `calculateSquareArea`
```dart
 double calculateSquareArea(double sideLength);
///Calculates the area of a square given the length of one side. Returns the area as a double value.
```
#### `calculateRectangleArea`
```dart
 double calculateRectangleArea(double length, double width);
///Calculates the area of a rectangle given its length and width. Returns the area as a double value.
```

#### `calculateTriangleArea`
```dart
 double calculateTriangleArea(double base, double height);
///Calculates the area of a triangle given its base and height. Returns the area as a double value.
```
#### `calculateRightAngleTriangleArea`
```dart
 double calculateRightAngleTriangleArea(double base, double height);
//Calculates the area of a right-angled triangle given its base and height. Returns the area as a double value.
```
#### `calculateEquilateralTriangleArea`
```dart
 double calculateEquilateralTriangleArea(double sideLength);
//Calculates the area of an equilateral triangle given the length of its sides. Returns the area as a double value.
```
 


 








## Issues and Feedback
Please file any issues, bugs, or feature requests in the GitHub repository.

## 🔗 Links
 [![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/mehran-ullah-742035153/)
 
## License
This project is licensed under the MIT License - see the LICENSE file for details.
