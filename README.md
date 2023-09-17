# Delta

The `delta_flutter` package is a powerful and flexible Flutter library designed to simplify and enhance the development of interactive and data-driven applications. It offers a wide range of comprehensive set of utilities and extensions for Flutter developers, simplifying tasks such as screen adaptation, length conversions, string manipulation, and country information retrieval. With this package, developers can streamline common Flutter app development challenges and enhance their applications with ease.
## Features
`delta_flutter` provides a collection of customizable widgets that go beyond the standard Flutter widgets, enabling you to create dynamic and engaging UI components effortlessly.
- Use `MediaQuery` and `Theme` without `context`


## Installation
To use this package, add `delta_flutter` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  delta_flutter: ^1.0.0

```

## Usage:

```dart
import 'package:delta/delta.dart';
```

## Example
```dart 
void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

// This widget is the root of your application.
@override
Widget build(BuildContext context) {
return DeltaApp(
theme: ThemeData(
colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
useMaterial3: true,
),
builder: (BuildContext context, Widget? child) => const MaterialApp(
title: 'Flutter Delta',
home: MyHomePage(title: 'Flutter Delta  '),
),
);
}
}
```




### Adaptations

  _Flutter Screen adaptations Extensions_
#### `w`

- **Description**: Returns an adaptive width value based on the current screen's dimensions using the `Delta` class.

#### `h`

- **Description**: Returns an adaptive height value based on the current screen's dimensions using the `Delta` class.

#### `r`

- **Description**: Returns a radius value adapted to the current screen's dimensions using the `Delta` class.

#### `sp`

- **Description**: Returns a font size value adapted to the current screen's dimensions using the `Delta` class.

#### `x`

- **Description**: Returns a `SizedBox` with a width value adapted to the current screen's dimensions using the `Delta` class.

#### `y`

- **Description**: Returns a `SizedBox` with a height value adapted to the current screen's dimensions using the `Delta` class.

#### `spMin`

- **Description**: Returns a font size value adapted to the current screen's dimensions but ensures it's not smaller than the original size.

#### `spMax`

- **Description**: Returns a font size value adapted to the current screen's dimensions but ensures it's not larger than the original size.

#### `sw`

- **Description**: Returns a value that is a multiple of the screen width using the `Delta` class.

#### `px`

- **Description**: Converts a value from pixels to Flutter adaptive units based on the device's pixel ratio using the `Delta` class.

#### `toPx`

- **Description**: Converts a Flutter adaptive unit value to pixels using the `Delta` class.

#### `sh`

- **Description**: Returns a value that is a multiple of the screen height using the `Delta` class.

### EdgeInsets adaptations Extensions
#### `r`

- **Description**: Returns `EdgeInsets` with top, bottom, right, and left values adapted to the current screen's dimensions using the `Delta` class.

#### `w`

- **Description**: Returns `EdgeInsets` with top, bottom, right, and left values adapted to the current screen's width using the `Delta` class.

#### `h`

- **Description**: Returns `EdgeInsets` with top, bottom, right, and left values adapted to the current screen's height using the `Delta` class.

### BorderRadius adaptation Extensions
#### `r`

- **Description**: Returns `BorderRadius` with bottom-left, bottom-right, top-left, and top-right values adapted to the current screen's dimensions using the `Delta` class.

#### `w`

- **Description**: Returns `BorderRadius` with bottom-left, bottom-right, top-left, and top-right values adapted to the current screen's width using the `Delta` class.

#### `h`

- **Description**: Returns `BorderRadius` with bottom-left, bottom-right, top-left, and top-right values adapted to the current screen's height using the `Delta` class.


###  Check device type Extensions
_Works on `MediaQueryData`_
#### `isMobile`

- **Description**: Returns `true` if the screen is determined to be a mobile device based on its diagonal size.

#### `isTablet`

- **Description**: Returns `true` if the screen is determined to be a tablet device based on its diagonal size.


### BoxConstraints adaptations  Extensions
#### `r`

- **Description**: Returns `BoxConstraints` with maxHeight, maxWidth, minHeight, and minWidth values adapted to the current screen's dimensions using the `Delta` class.

#### `hw`

- **Description**: Returns `BoxConstraints` with maxHeight adapted to the current screen's height and maxWidth adapted to the current screen's width using the `Delta` class.

#### `w`

- **Description**: Returns `BoxConstraints` with maxHeight, maxWidth, minHeight, and minWidth values adapted to the current screen's width using the `Delta` class.

#### `h`

- **Description**: Returns `BoxConstraints` with maxHeight, maxWidth, minHeight, and minWidth values adapted to the current screen's height using the `Delta` class.

### Radius adaptations
#### `r`

- **Description**: Returns a `Radius` value adapted to the current screen's dimensions using the `Delta` class.

#### `w`

- **Description**: Returns a `Radius` value adapted to the current screen's width using the `Delta` class.

#### `h`

- **Description**: Returns a `Radius` value adapted to the current screen's height using the `Delta` class.



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

### Numeral Counts Formats
-----------
| USAGE                           | Preview                                        | Description                                                                                                                                                                                            |
|---------------------------------|------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `45000.shortSINumeral`          | 45k                                            | Convert  numeric to readable String  i.e: 45000 to String 45k, 6500000 to String 6.5M etc                                                                                                              |
| `2390051100.longSINumeral`      | 2 Billion 390 Million 51 Thousand 100          | Convert  numeric to full readable String numeral names                                                                                                                                                 |
| `2390000000.shortIndianNumeral` | 2.39 Arab                                      | These terms is primarily used in the Indian subcontinent, including Pakistan, India, Bangladesh, Nepal, and Sri Lanka. It represents ten million (10,000,000). For example, 2 crore equals 20,000,000. |
| `2390900977.longIndianNumeral`  | 2 Arab 39 crore 9 lakh 9 hundred seventy seven | These terms is primarily used in the Indian subcontinent, including Pakistan, India, Bangladesh, Nepal, and Sri Lanka. It represents ten million (10,000,000). For example, 2 crore equals 20,000,000. |




### Countries details
Access to the details of any country by calling this extension `countryDetail` right after country name.
> **Note:** Double check your country spelling for accurate result. Also avoid extra white spaces between the spellings. Don't worry about Capital or small letters in your `String` as this extension is Case-Insensitive.

**Example:**

```dart
void main(){

//return details as Type Country 
//
//Can be converted to Json Object or JSON String
//
//In this Example we convert Type Country to JSON String for the sake of avoiding printing Instance of <Country>

print("pakistan".countryDetail.toRawJson());
 

}
```
#### DeltaCountry Class

The `DeltaCountry` class provides methods to retrieve detailed information about countries, including their flags, dial codes, names, and more. It also allows you to retrieve information about cities within a specific country.

**Methods**

`details(String country)`

- _Description_: Retrieves detailed information about a specific country.
- _Parameters_:
  - `country` (String): The name of the country for which you want to retrieve details.
- _Returns_: A `Country` object containing comprehensive data about the specified country, including its name, capital, population, and more.
- **Example**:
 ```dart
   void main(){
   final countryData = DeltaCountry().details("Pakistan");
print("Country Name: ${pakistanData.name}");
print("Capital: ${pakistanData.capital}");
print("Population: ${pakistanData.population}");
//etc
// Returns detailed information about Pakistan as a Country object.
}
```
`all`
- _Description_: Retrieves details about all countries.
- _Returns_: A list of Country objects, each containing information about a specific country.
  **Example:**
```dart
 final allCountries = DeltaCountry().all;
// Returns a list of Country objects representing details about all countries.
```
`dialCodes`
- _Description_: Retrieves a list of international dial codes for all countries.
- _Returns_: A list of strings representing international dial codes for each country.
  **Example:**
```dart
 final dialCodesList = DeltaCountry().dialCodes;
// Returns a list of international dial codes.
```
`names`
- _Description_: Retrieves a list of names of all countries.
- _Returns_: A list of strings representing the names of all countries.
  **Example:**
```dart
 final countryNames = DeltaCountry().names;
// Returns a list of country names.
```
`flagUrls`
- _Description_: Retrieves URLs for the flags of all countries in SVG and PNG formats.
- _Returns_: A list of Flags objects, each containing URLs for the SVG and PNG flags of a country.
  **Example:**
```dart
 final flagUrlsList = DeltaCountry().flagUrls;
// Returns a list of flag URLs for all countries.
```
`cities(String country)`
- _Description_: Retrieves a list of major cities within a specific country.
- _Parameters:_
- _country (String)_: The name of the country for which you want to retrieve a list of cities.
- _Returns_: A list of strings representing major cities within the specified country.
  **Example:**
```dart
 final citiesList = DeltaCountry().cities("Pakistan");
// Returns a list of major cities in Pakistan.
```


 **Key Descriptions**


Here are descriptions for each property in 'DeltaCountry' class:

- **name**: Official name of the country.

- **topLevelDomain**: Top-level domain extensions for websites related to Country.

- **alpha2Code**: Two-letter country code for Country.

- **alpha3Code**: Three-letter country code for Country.

- **callingCodes**: International calling code for Country.

- **capital**: Capital city of Country.

- **altSpellings**: Alternative spellings and names for Country in various languages and scripts.

- **subregion**: Subregion of Country.

- **region**: Larger region to which Country belongs.

- **population**: Approximate population of Country.

- **latlng**: Geographical coordinates of Country.

- **demonym**: Term used to refer to people from Pakistan.

- **area**: Total land area of Country.

- **gini**: Gini Index, a measure of income inequality, for Country.

- **timezones**: Timezone observed in Country.

- **borders**: Neighboring countries sharing borders with Country.

- **nativeName**: Native name of Country.

- **numericCode**: Numeric country code for Country.

- **flags**: Links to flag images of Country in SVG and PNG formats.

- **currencies**: Array of currencies used in Country, including the code, name, and symbol of the Country.

- **languages**: Array of languages spoken in Country, with details such as ISO codes, names, and native names.

- **translations**: Translations of the word "Country" in various languages, including Portuguese, Dutch, Croatian, Persian, German, Spanish, French, Japanese, Italian, and Hungarian.

- **flag**: Direct link to Country's flag image.

- **regionalBlocs**: Representation of regional blocs or organizations that Country is a part of.

- **cioc**: Country code used by the International Olympic Committee (IOC) for Country.

- **independent**: Boolean value indicating that Country is an independent or not.

- **cities**: Array listing some major cities in Country.



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


You can also use length extensions on double values for conversions.
```dart
void main() {
  double centimeters = 100.0;
///Using length extensions
   double inches = centimeters.centimeterToInch;
  double feet =  centimeters.centimeterToFoot;
  
  print('$centimeters centimeters is equal to:');
  print('$inches inches');
  print('$feet feet');
}
```



#### Inch (in)

- 1 inch = 1 inch (`inchToInch`)
- 1 inch = 0.0833 feet (`inchToFoot`)
- 1 inch = 0.0278 yards (`inchToYard`)
- 1 inch = 1.5783e-5 miles (`inchToMile`)
- 1 inch = 2.54 centimeters (`inchToCentimeter`)
- 1 inch = 0.0254 meters (`inchToMeter`)
- 1 inch = 2.54e-5 kilometers (`inchToKilometer`)
- 1 inch = 2.54e-10 light-years (`inchToLightYear`)
- 1 inch = 1.724e-8 light-days (`inchToLightDay`)
- 1 inch = 4.17e-7 light-hours (`inchToLightHour`)
- 1 inch = 2.5e-5 light-minutes (`inchToLightMinute`)
- 1 inch = 1.5e-6 light-seconds (`inchToLightSecond`)

#### Foot (ft)

- 1 foot = 12 inches (`footToInch`)
- 1 foot = 1 foot (`footToFoot`)
- 1 foot = 0.3333 yards (`footToYard`)
- 1 foot = 0.0001894 miles (`footToMile`)
- 1 foot = 30.48 centimeters (`footToCentimeter`)
- 1 foot = 0.3048 meters (`footToMeter`)
- 1 foot = 0.0003048 kilometers (`footToKilometer`)
- 1 foot = 3.048e-9 light-years (`footToLightYear`)
- 1 foot = 2.07e-7 light-days (`footToLightDay`)
- 1 foot = 4.97e-6 light-hours (`footToLightHour`)
- 1 foot = 2.98e-4 light-minutes (`footToLightMinute`)
- 1 foot = 1.79e-5 light-seconds (`footToLightSecond`)

#### Yard (yd)

- 1 yard = 36 inches (`yardToInch`)
- 1 yard = 3 feet (`yardToFoot`)
- 1 yard = 1 yard (`yardToYard`)
- 1 yard = 0.0005682 miles (`yardToMile`)
- 1 yard = 91.44 centimeters (`yardToCentimeter`)
- 1 yard = 0.9144 meters (`yardToMeter`)
- 1 yard = 0.0009144 kilometers (`yardToKilometer`)
- 1 yard = 9.144e-9 light-years (`yardToLightYear`)
- 1 yard = 6.132e-7 light-days (`yardToLightDay`)
- 1 yard = 1.47e-5 light-hours (`yardToLightHour`)
- 1 yard = 8.82e-4 light-minutes (`yardToLightMinute`)
- 1 yard = 5.29e-5 light-seconds (`yardToLightSecond`)

#### Mile (mi)

- 1 mile = 63,360 inches (`mileToInch`)
- 1 mile = 5,280 feet (`mileToFoot`)
- 1 mile = 1,760 yards (`mileToYard`)
- 1 mile = 1 mile (`mileToMile`)
- 1 mile = 160,934 centimeters (`mileToCentimeter`)
- 1 mile = 1,609.34 meters (`mileToMeter`)
- 1 mile = 1.60934 kilometers (`mileToKilometer`)
- 1 mile = 1.701e-13 light-years (`mileToLightYear`)
- 1 mile = 1.146e-11 light-days (`mileToLightDay`)
- 1 mile = 2.75e-10 light-hours (`mileToLightHour`)
- 1 mile = 1.65e-8 light-minutes (`mileToLightMinute`)
- 1 mile = 9.87e-10 light-seconds (`mileToLightSecond`)

#### Cape Foot

- Coming Soon

#### Rod

- Coming Soon

#### Angstrom

- 1 angstrom = 3.937e-9 inches (`angstromToInch`)
- 1 angstrom = 3.281e-10 feet (`angstromToFoot`)
- 1 angstrom = 1.0936e-10 yards (`angstromToYard`)
- 1 angstrom = 6.214e-14 miles (`angstromToMile`)
- 1 angstrom = 0.00000001 centimeters (`angstromToCentimeter`)
- 1 angstrom = 1e-10 meters (`angstromToMeter`)
- 1 angstrom = 1e-13 kilometers (`angstromToKilometer`)
- 1 angstrom = 1.057e-24 light-years (`angstromToLightYear`)
- 1 angstrom = 7.14e-23 light-days (`angstromToLightDay`)
- 1 angstrom = 1.71e-21 light-hours (`angstromToLightHour`)
- 1 angstrom = 1.03e-19 light-minutes (`angstromToLightMinute`)
- 1 angstrom = 6.19e-18 light-seconds (`angstromToLightSecond`)

#### Nanometer (nm)

- 1 nanometer = 3.937e-8 inches (`nanometerToInch`)
- 1 nanometer = 3.281e-9 feet (`nanometerToFoot`)
- 1 nanometer = 1.0936e-9 yards (`nanometerToYard`)
- 1 nanometer = 6.214e-13 miles (`nanometerToMile`)
- 1 nanometer = 0.0001 centimeters (`nanometerToCentimeter`)
- 1 nanometer = 0.000001 meters (`nanometerToMeter`)
- 1 nanometer = 1e-9 kilometers (`nanometerToKilometer`)
- 1 nanometer = 1.057e-21 light-years (`nanometerToLightYear`)
- 1 nanometer = 7.14e-20 light-days (`nanometerToLightDay`)
- 1 nanometer = 1.71e-18 light-hours (`nanometerToLightHour`)
- 1 nanometer = 1.03e-16 light-minutes (`nanometerToLightMinute`)
- 1 nanometer = 6.19e-15 light-seconds (`nanometerToLightSecond`)

#### Micron (µm)

- 1 micron = 3.937e-5 inches (`micronToInch`)
- 1 micron = 3.281e-6 feet (`micronToFoot`)
- 1 micron = 1.0936e-6 yards (`micronToYard`)
- 1 micron = 6.214e-10 miles (`micronToMile`)
- 1 micron = 0.01 centimeters (`micronToCentimeter`)
- 1 micron = 0.000001 meters (`micronToMeter`)
- 1 micron = 1e-6 kilometers (`micronToKilometer`)
- 1 micron = 1.057e-18 light-years (`micronToLightYear`)
- 1 micron = 7.14e-17 light-days (`micronToLightDay`)
- 1 micron = 1.71e-15 light-hours (`micronToLightHour`)
- 1 micron = 1.03e-13 light-minutes (`micronToLightMinute`)
- 1 micron = 6.19e-12 light-seconds (`micronToLightSecond`)

#### Centimeter (cm)

- 1 centimeter = 0.3937 inches (`centimeterToInch`)
- 1 centimeter = 0.0328 feet (`centimeterToFoot`)
- 1 centimeter = 0.0109 yards (`centimeterToYard`)
- 1 centimeter = 6.2137e-6 miles (`centimeterToMile`)
- 1 centimeter = 10 centimeters (`centimeterToCentimeter`)
- 1 centimeter = 0.01 meters (`centimeterToMeter`)
- 1 centimeter = 1e-5 kilometers (`centimeterToKilometer`)
- 1 centimeter = 1.057e-17 light-years (`centimeterToLightYear`)
- 1 centimeter = 7.14e-16 light-days (`centimeterToLightDay`)
- 1 centimeter = 1.71e-14 light-hours (`centimeterToLightHour`)
- 1 centimeter = 1.03e-12 light-minutes (`centimeterToLightMinute`)
- 1 centimeter = 6.19e-11 light-seconds (`centimeterToLightSecond`)

#### Meter (m)

- 1 meter = 39.37 inches (`meterToInch`)
- 1 meter = 3.281 feet (`meterToFoot`)
- 1 meter = 1.094 yards (`meterToYard`)
- 1 meter = 0.0006214 miles (`meterToMile`)
- 1 meter = 100 centimeters (`meterToCentimeter`)
- 1 meter = 1 meter (`meterToMeter`)
- 1 meter = 0.001 kilometers (`meterToKilometer`)
- 1 meter = 1.057e-16 light-years (`meterToLightYear`)
- 1 meter = 7.14e-15 light-days (`meterToLightDay`)
- 1 meter = 1.71e-13 light-hours (`meterToLightHour`)
- 1 meter = 1.03e-11 light-minutes (`meterToLightMinute`)
- 1 meter = 6.19e-10 light-seconds (`meterToLightSecond`)

#### Kilometer (km)

- 1 kilometer = 39370.1 inches (`kilometerToInch`)
- 1 kilometer = 3280.84 feet (`kilometerToFoot`)
- 1 kilometer = 1093.61 yards (`kilometerToYard`)
- 1 kilometer = 0.6214 miles (`kilometerToMile`)
- 1 kilometer = 100000 centimeters (`kilometerToCentimeter`)
- 1 kilometer = 1000 meters (`kilometerToMeter`)
- 1 kilometer = 1 kilometer (`kilometerToKilometer`)
- 1 kilometer = 1.057e-13 light-years (`kilometerToLightYear`)
- 1 kilometer = 7.14e-12 light-days (`kilometerToLightDay`)
- 1 kilometer = 1.71e-10 light-hours (`kilometerToLightHour`)
- 1 kilometer = 1.03e-8 light-minutes (`kilometerToLightMinute`)
- 1 kilometer = 6.19e-7 light-seconds (`kilometerToLightSecond`)

#### Light-year

- 1 light-year = 7.461e12 inches (`lightYearToInch`)
- 1 light-year = 6.218e11 feet (`lightYearToFoot`)
- 1 light-year = 1.057e13 yards (`lightYearToYard`)
- 1 light-year = 5.878e12 miles (`lightYearToMile`)
- 1 light-year = 9.461e17 centimeters (`lightYearToCentimeter`)
- 1 light-year = 9.461e15 meters (`lightYearToMeter`)
- 1 light-year = 9.461e12 kilometers (`lightYearToKilometer`)
- 1 light-year = 1 light-year (`lightYearToLightYear`)
- 1 light-year = 6.76e7 light-days (`lightYearToLightDay`)
- 1 light-year = 1.62e9 light-hours (`lightYearToLightHour`)
- 1 light-year = 9.73e10 light-minutes (`lightYearToLightMinute`)
- 1 light-year = 5.84e12 light-seconds (`lightYearToLightSecond`)

#### Light-day

- 1 light-day = 7.461e10 inches (`lightDayToInch`)
- 1 light-day = 6.218e9 feet (`lightDayToFoot`)
- 1 light-day = 1.057e10 yards (`lightDayToYard`)
- 1 light-day = 5.076e10 miles (`lightDayToMile`)
- 1 light-day = 8.64e10 centimeters (`lightDayToCentimeter`)
- 1 light-day = 8.64e8 meters (`lightDayToMeter`)
- 1 light-day = 8.64e5 kilometers (`lightDayToKilometer`)
- 1 light-day = 1.461e-2 light-years (`lightDayToLightYear`)
- 1 light-day = 1 light-day (`lightDayToLightDay`)
- 1 light-day = 2.4e4 light-hours (`lightDayToLightHour`)
- 1 light-day = 1.44e6 light-minutes (`lightDayToLightMinute`)
- 1 light-day = 8.64e7 light-seconds (`lightDayToLightSecond`)

#### Light-hour

- 1 light-hour = 7.461e8 inches (`lightHourToInch`)
- 1 light-hour = 6.218e7 feet (`lightHourToFoot`)
- 1 light-hour = 1.057e8 yards (`lightHourToYard`)
- 1 light-hour = 5.076e8 miles (`lightHourToMile`)
- 1 light-hour = 8.64e8 centimeters (`lightHourToCentimeter`)
- 1 light-hour = 8.64e6 meters (`lightHourToMeter`)
- 1 light-hour = 8.64e3 kilometers (`lightHourToKilometer`)
- 1 light-hour = 6.097e-4 light-years (`lightHourToLightYear`)
- 1 light-hour = 4.17e1 light-days (`lightHourToLightDay`)
- 1 light-hour = 1 light-hour (`lightHourToLightHour`)
- 1 light-hour = 6e3 light-minutes (`lightHourToLightMinute`)
- 1 light-hour = 3.6e4 light-seconds (`lightHourToLightSecond`)

#### Light-minute

- 1 light-minute = 7.461e6 inches (`lightMinuteToInch`)
- 1 light-minute = 6.218e5 feet (`lightMinuteToFoot`)
- 1 light-minute = 1.057e6 yards (`lightMinuteToYard`)
- 1 light-minute = 5.076e6 miles (`lightMinuteToMile`)
- 1 light-minute = 8.64e6 centimeters (`lightMinuteToCentimeter`)
- 1 light-minute = 8.64e4 meters (`lightMinuteToMeter`)
- 1 light-minute = 8.64e1 kilometers (`lightMinuteToKilometer`)
- 1 light-minute = 1.016e-5 light-years (`lightMinuteToLightYear`)
- 1 light-minute = 6.94e-1 light-days (`lightMinuteToLightDay`)
- 1 light-minute = 1.67e1 light-hours (`lightMinuteToLightHour`)
- 1 light-minute = 1 light-minute (`lightMinuteToLightMinute`)
- 1 light-minute = 6e2 light-seconds (`lightMinuteToLightSecond`)

#### Light-second

- 1 light-second = 7.461e4 inches (`lightSecondToInch`)
- 1 light-second = 6.218e3 feet (`lightSecondToFoot`)
- 1 light-second = 1.057e4 yards (`lightSecondToYard`)
- 1 light-second = 5.076e4 miles (`lightSecondToMile`)
- 1 light-second = 8.64e4 centimeters (`lightSecondToCentimeter`)
- 1 light-second = 8.64e2 meters (`lightSecondToMeter`)
- 1 light-second = 8.64e-1 kilometers (`lightSecondToKilometer`)
- 1 light-second = 1.016e-7 light-years (`lightSecondToLightYear`)
- 1 light-second = 6.94e-5 light-days (`lightSecondToLightDay`)
- 1 light-second = 1.67e-3 light-hours (`lightSecondToLightHour`)
- 1 light-second = 1.0 light-minutes (`lightSecondToLightMinute`)
- 1 light-second = 1 light-second (`lightSecondToLightSecond`)






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
 


 









### Delta Class

The `Delta` class is a utility class that provides various methods and properties for handling screen sizes, text scaling, theming, and more in a Flutter application. It offers functionality for adapting the app's layout and design to different screen sizes and orientations.

#### Properties

  `data`

- **Description**: A singleton instance of the `Delta` class.
- **Type**: `Delta`
- **Usage**: Use this instance to access the properties and methods provided by the `Delta` class.


 `blockedWords`

- **Description**: A list of words to be censored in text.
- **Type**: `List<String>?`
- **Usage**: Define a list of words that you want to censor in text. Words in this list will be replaced with asterisks.

  `theme`

- **Description**: Returns the theme data for the current app's visual appearance.

 `primaryColor`

- **Description**: Returns the primary color from the current theme data.

  `platform`

- **Description**: Returns the current platform (Android, iOS, etc.) for platform-specific behavior.

  `textTheme`

- **Description**: Returns the text theme data from the current theme.

  `length`

- **Description**: A subclass for performing length-related conversions.

  `area`

- **Description**: A subclass for performing area-related conversions.

  `country`

- **Description**: A subclass for retrieving information about countries.






## Issues and Feedback
Please file any issues, bugs, or feature requests in the GitHub repository.

## 🔗 Links
 [![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/mehran-ullah-742035153/)
 
## License
This project is licensed under the MIT License - see the LICENSE file for details.
