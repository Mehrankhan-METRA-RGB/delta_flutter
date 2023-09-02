import 'dart:math';

extension RandomString on String {
  /// This will generate a randomly unorganized string
  /// length property will be consider as the random string length
  String getRandom({int length = 10}) {
    Random random = Random();
    return String.fromCharCodes(
        Iterable.generate(length, (_) => codeUnitAt(random.nextInt(length))));
  }

  ///String Formatting: Extensions for formatting strings, such as adding thousands separators to a number string.
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

  ///String Validation: Extensions for validating strings, such as checking if a string is a valid email address.
  bool isValidEmail() {
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    return emailRegExp.hasMatch(this);
  }

  ///String Conversion: Extensions for converting a string to different formats like snake_case or kebab-case.
  String toSnakeCase() {
    return replaceAllMapped(
            RegExp(r'([A-Z])'), (match) => '_${match.group(1)!.toLowerCase()}')
        .toLowerCase();
  }

  ///String Conversion: Extensions for converting a string to different formats like snake_case or kebab-case.
  String toKebabCase() {
    return replaceAllMapped(
            RegExp(r'([A-Z])'), (match) => '-${match.group(1)!.toLowerCase()}')
        .toLowerCase();
  }

  ///String Capitalization: Extensions for capitalizing the first letter of a string or capitalizing the first letter of each word in a string.
  String capitalizeFirstLetter() {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  ///String Capitalization: Extensions for capitalizing the first letter of a string or capitalizing the first letter of each word in a string.
  String capitalizeEachWord() {
    if (isEmpty) return this;
    final words = split(' ');
    final capitalizedWords = words.map((word) => word.capitalizeFirstLetter());
    return capitalizedWords.join(' ');
  }

  ///String Truncation: An extension to truncate a string to a specified length and add an ellipsis if it exceeds that length.
  String truncate(int maxLength) {
    if (length <= maxLength) return this;
    return '${substring(0, maxLength)}...';
  }
}
