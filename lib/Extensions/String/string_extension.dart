import 'dart:math';

import 'package:delta/Initializer/delta_initializer.dart';
import 'package:flutter/cupertino.dart';

extension DeltaString on String {
  /// This will generate a randomly unorganized string
  /// length property will be consider as the random string length
  String random({int length = 10}) {
    Random random = Random();
    return String.fromCharCodes(
        Iterable.generate(length, (_) => codeUnitAt(random.nextInt(length))));
  }

  ///String Formatting: Extensions for formatting strings, such as
  /// adding thousands separators to a number string.
  String addThousandsSeparator() {
    final parts = split('.');
    final wholePart = parts[0].replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (match) => '${match.group(1)},',
    );
    if (parts.length > 1) {
      return '$wholePart.${parts[1]}';
    }
    return wholePart;
  }

  ///String Validation: Extensions for validating strings, such as checking
  /// if a string is a valid email address.
  bool isValidEmail() {
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    return emailRegExp.hasMatch(this);
  }

  ///String Conversion: Extensions for converting a string to
  /// formats like snake_case
  String toSnakeCase() {
    return replaceAllMapped(
            RegExp(r'([A-Z])'), (match) => '_${match.group(1)!.toLowerCase()}')
        .toLowerCase();
  }

  ///String Conversion: Extensions for converting a string to
  ///formats like snake_case or kebab-case.
  String toKebabCase() {
    return replaceAllMapped(
            RegExp(r'([A-Z])'), (match) => '-${match.group(1)!.toLowerCase()}')
        .toLowerCase();
  }

  ///String Capitalization: Extensions for capitalizing the first letter
  /// of a string or capitalizing the first letter of each word in a string.
  String capitalizeFirstLetter() {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  ///String Capitalization: Extensions for capitalizing the first letter
  /// of a string or capitalizing the first letter of each word in a string.
  String capitalizeEachWord() {
    if (isEmpty) return this;
    final words = split(' ');
    final capitalizedWords = words.map((word) => word.capitalizeFirstLetter());
    return capitalizedWords.join(' ');
  }

  ///String Truncation: An extension to truncate a string to a specified
  ///length and add an ellipsis if it exceeds that length.
  String truncate(int maxLength) {
    if (length <= maxLength) return this;
    return '${substring(0, maxLength)}...';
  }

  ///The findUrls function takes a text parameter and uses a regular
  ///expression to find URLs within the text. It then extracts the
  ///matched URLs and adds them to a list, which is returned by the function.
  List<String> findUrls(String text) {
    final RegExp urlRegExp = RegExp(
      r'(http|https):\/\/[^\s/$.?#].[^\s]*',
      caseSensitive: false,
      multiLine: true,
    );

    final Iterable<Match> matches = urlRegExp.allMatches(text);

    final List<String> urls = [];

    for (Match match in matches) {
      urls.add(match.group(0)!);
    }

    return urls;
  }

  ///The findPhoneNumbers function uses a regular expression (phoneRegExp)
  ///to find phone numbers in the provided text. It can match phone numbers
  /// in various common formats like "123-456-7890," "(555) 555-5555," "987.654.3210,"
  /// and "888 888 8888."
  List<String> findPhoneNumbers(String text) {
    final RegExp phoneRegExp = RegExp(
      r'(\d{3}[-\.\s]??\d{3}[-\.\s]??\d{4}|\(\d{3}\)[-.\s]??\d{3}[-.\s]??\d{4})',
      caseSensitive: false,
      multiLine: true,
    );

    final Iterable<Match> matches = phoneRegExp.allMatches(text);

    final List<String> phoneNumbers = [];

    for (Match match in matches) {
      phoneNumbers.add(match.group(0)!);
    }

    return phoneNumbers;
  }

  /// We define a list of bad words (badWords) that you want to censor.
  ///
  /// We create a regular expression pattern by joining the bad words with
  /// the word boundary anchors (\b) and using the | (OR) operator to match
  /// any of the bad words. This ensures that only complete words are censored,
  /// not partial matches.
  ///
  /// We use the replaceAllMapped method to replace each occurrence of a bad
  /// word in the text with asterisks of the same length as the bad word.
  ///
  /// Finally, we demonstrate how to use the censorBadWords function with a
  /// sample text, and it prints the text with the bad words replaced by asterisks.
  String censorWords({List<String>? censors}) {
    // List of bad words to censor
    List<String>? badWords = censors ?? Delta.data.blockedWords;
    if (badWords != null) {
      // Create a regular expression pattern for each bad word
      String pattern = badWords.map((word) => '\\b$word\\b').join('|');
      RegExp regExp = RegExp(pattern, caseSensitive: false);

      // Replace bad words with asterisks
      return replaceAllMapped(regExp, (match) => '*' * match.group(0)!.length);
    } else {
      throw ErrorDescription(
          "The method failed because you haven't pass List of censor words on which the will have to block them"
          "You have two ways to pass censor words either in [DeltaApp] or directly to extension method like 'What is your name?'.censorWords(censors:['name']) the method will return 'What is you ****?'  ");
    }
  }

  /// The findCoordinates extension uses a regular expression (coordinatesRegExp)
  /// to find coordinate pairs in the provided text. It matches coordinates in the
  /// format "(latitude, longitude)" with both positive and negative values for
  /// latitude and longitude.
  ///
  /// ==================================================================>
  ///
  /// void main() {
  ///
  ///   String longText = """
  ///
  ///   Here are some coordinates:
  ///
  ///   (40.7128, -74.0060)
  ///
  ///   (34.0522, -118.2437)
  ///
  ///   (51.5074, -0.1278)
  ///
  ///   Don't forget (48.8566, 2.3522).
  /// """;
  ///
  ///   List<String> foundCoordinates = findCoordinatesInText(longText);
  ///
  ///   for (String coordinate in foundCoordinates) {
  ///
  ///     print(coordinate);
  ///   }  }
  ///
  /// ==================================================================>
  Future<List<String>> get findCoordinates async {
    final RegExp coordinatesRegExp = RegExp(
      r'\((-?\d+(\.\d+)?),\s*(-?\d+(\.\d+)?)\)',
      caseSensitive: false,
      multiLine: true,
    );

    final Iterable<Match> matches = coordinatesRegExp.allMatches(this);

    final List<String> coordinates = [];

    for (Match match in matches) {
      coordinates.add(match.group(0)!);
    }

    return coordinates;
  }

  /// The countLetter extension counts the occurrences of a specific single
  /// letter within a given text  here's and Example:
  ///
  /// ==================================================================>
  ///
  /// String longText =  "This is an example text with ab letters and ab words. It also contains
  /// abbreviations like abc and abcd. The rabbit jumped over the ab fence.";
  ///
  ///   int count = longText.countLetter("a");
  ///
  ///   print("The sequence 'a' appears $count times in the text.");
  ///
  ///
  /// ==================================================================>
  ///
  int countLetter(String targetLetter) {
    if (targetLetter.length > 1) {
      throw ErrorDescription(
          "The method failed because you pass more than single letter in targetLetter property");
    }
    return split('').where((char) => char == targetLetter).length;
  }

  ///To count the occurrences of the letters sequence in a text and
  /// check for consecutive occurrences of target letters Here's
  ///
  /// an Example:
  ///
  /// ==================================================================>
  ///
  /// String longText =  "This is an example text with ab letters and ab words. It also contains
  /// abbreviations like abc and abcd. The rabbit jumped over the ab fence.";
  ///
  ///   int count = longText.countLetters("ab");
  ///
  ///   print("The sequence 'ab' appears $count times in the text.");
  ///
  ///
  /// ==================================================================>
  ///
  int countLetters(String target) {
    final RegExp targetRegExp = RegExp(target);
    return targetRegExp.allMatches(this).length;
  }

  /// The countWord extension counts the occurrences of a specific
  /// word within a given text. It splits the text into words using
  /// spaces as delimiters and then counts the occurrences of the target word.
  int countWord(String targetWord) {
    if (targetWord.split(" ").length > 1) {
      throw ErrorDescription(
          "The method failed because you pass more than single word in targetWord property");
    }
    int count = 0;
    int startIndex = 0;
    final targetLength = targetWord.length;

    while (true) {
      final index = indexOf(targetWord, startIndex);
      if (index == -1) {
        break;
      }
      count++;
      startIndex = index + targetLength;
    }

    return count;
  }
}
