import 'dart:math';

extension RandomString on String {
  /// This will generate a randomly unorganized string
  /// length property will be consider as the random string length
  String getRandom({int length = 10}) {
    Random random = Random();
    return String.fromCharCodes(
        Iterable.generate(length, (_) => codeUnitAt(random.nextInt(length))));
  }
}
