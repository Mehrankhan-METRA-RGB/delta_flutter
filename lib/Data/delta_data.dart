import 'package:flutter/material.dart';

typedef DeltaRebuildCase = bool Function(
    MediaQueryData old, MediaQueryData data);

typedef DeltaBuilder = Widget Function(
  BuildContext context,
  Widget? child,
);

/// When to change state
///
class SetState {
  const SetState._();

  /// Screen will be rebuild when size changes
  static bool onSize(MediaQueryData old, MediaQueryData data) {
    return old.size != data.size;
  }

  /// Screen will be rebuild when orientation changes
  static bool onOrientation(MediaQueryData old, MediaQueryData data) {
    return old.orientation != data.orientation;
  }

  /// Screen will be rebuild when size And View Insets changes
  static bool onSizeAndEdgeInsets(MediaQueryData old, MediaQueryData data) {
    return old.viewInsets != data.viewInsets;
  }

  ///Screen will be rebuild when [onSize],[onOrientation] or [si] changes
  static bool onAll(MediaQueryData old, MediaQueryData data) {
    return old != data;
  }
}
