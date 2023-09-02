import 'package:flutter/widgets.dart';

extension Gap on num {
  ///Will return SizedBox on corresponding num value
  /// The value will assign to SizeBox width
  ///
  /// i.e:  60.x,  means SizedBox(width:60),
  SizedBox get x => SizedBox(width: toDouble());

  ///Will return SizedBox on corresponding num value
  /// The value will assign to SizeBox Height
  ///
  /// i.e:  60.y,  means SizedBox(height:60),
  SizedBox get y => SizedBox(height: toDouble());
}
