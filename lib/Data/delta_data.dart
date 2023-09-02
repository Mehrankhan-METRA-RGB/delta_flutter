import 'package:flutter/material.dart';

typedef DeltaRebuildCase = bool Function(MediaQueryData old, MediaQueryData data);

typedef DeltaBuilder = Widget Function(
    BuildContext context,
    Widget? child,
    );

class RebuildCases {
  const RebuildCases._();

  /// Screen will be rebuild when size changes
  static bool size(MediaQueryData old, MediaQueryData data) {
    return old.size != data.size;
  }

  /// Screen will be rebuild when orientation changes
  static bool orientation(MediaQueryData old, MediaQueryData data) {
    return old.orientation != data.orientation;
  }

  /// Screen will be rebuild when size And View Insets changes
  static bool si(MediaQueryData old, MediaQueryData data) {
    return old.viewInsets != data.viewInsets;
  }

  ///Screen will be rebuild when [size],[orientation] or [si] changes
  static bool all(MediaQueryData old, MediaQueryData data) {
    return old != data;
  }
}