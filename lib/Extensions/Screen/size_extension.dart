import 'dart:math';

import 'package:delta/Initializer/delta_initializer.dart';
import 'package:flutter/material.dart';

extension SizeExtension on num {
  ///[Delta.adaptiveWidth]
  double get w => Delta().adaptiveWidth(this);

  ///[Delta.adaptiveHeight]
  double get h => Delta().adaptiveHeight(this);

  ///[Delta.radius]
  double get r => Delta().radius(this);

  ///[Delta.setSp]
  double get sp => Delta().setSp(this);

  ///Will return Adaptive SizedBox on corresponding num value
  /// The value will assign to SizeBox width
  ///
  /// i.e:  60.x,  means SizedBox(width:60),
  SizedBox get x => SizedBox(width: Delta().adaptiveWidth(this));

  ///Will return Adaptive SizedBox on corresponding num value
  /// The value will assign to SizeBox Height
  ///
  /// i.e:  60.y,  means SizedBox(height:60),
  SizedBox get y => SizedBox(height: Delta().adaptiveHeight(this));

  ///smart size :  it check your value - if it is bigger than your value it will set your value
  ///for example, you have set 16.sm() , if for your screen 16.sp() is bigger than 16 , then it will set 16 not 16.sp()
  ///I think that it is good for save size balance on big sizes of screen
  double get spMin => min(toDouble(), sp);

  double get spMax => max(toDouble(), sp);

  ///Multiple of screen width
  double get sw => Delta().width * this;

  ///Use this method when you have pixels values available. For Example your giving 1020 pixels. just use this method right after the value like [1020.px]
  ///
  /// This method will automatically convert your pixels value into flutter adaptive unit, depends on device pixel ratio
  double get px => Delta().pixelsToFlutterUnits(this);

  ///Will Convert flutter value to pixels
  ///NOTE: The User must call this after Flutter unit like (60.toPx)
  double get toPx => Delta().flutterUnitToPixels(this);

  ///Multiple of screen height
  double get sh => Delta().height * this;
}

extension EdgeInsetsExtension on EdgeInsets {
  /// Creates adapt insets using r [SizeExtension].
  EdgeInsets get r => copyWith(
        top: top.r,
        bottom: bottom.r,
        right: right.r,
        left: left.r,
      );

  EdgeInsets get w => copyWith(
        top: top.w,
        bottom: bottom.w,
        right: right.w,
        left: left.w,
      );

  EdgeInsets get h => copyWith(
        top: top.h,
        bottom: bottom.h,
        right: right.h,
        left: left.h,
      );
}

extension BorderRaduisExtension on BorderRadius {
  /// Creates adapt BorderRadius using r [SizeExtension].
  BorderRadius get r => copyWith(
        bottomLeft: bottomLeft.r,
        bottomRight: bottomRight.r,
        topLeft: topLeft.r,
        topRight: topRight.r,
      );

  BorderRadius get w => copyWith(
        bottomLeft: bottomLeft.w,
        bottomRight: bottomRight.w,
        topLeft: topLeft.w,
        topRight: topRight.w,
      );

  BorderRadius get h => copyWith(
        bottomLeft: bottomLeft.h,
        bottomRight: bottomRight.h,
        topLeft: topLeft.h,
        topRight: topRight.h,
      );
}

extension RaduisExtension on Radius {
  /// Creates adapt Radius using r [SizeExtension].
  Radius get r => Radius.elliptical(x.r, y.r);

  Radius get w => Radius.elliptical(x.w, y.w);

  Radius get h => Radius.elliptical(x.h, y.h);
}

extension BoxConstraintsExtension on BoxConstraints {
  /// Creates adapt BoxConstraints using r [SizeExtension].
  BoxConstraints get r => copyWith(
        maxHeight: maxHeight.r,
        maxWidth: maxWidth.r,
        minHeight: minHeight.r,
        minWidth: minWidth.r,
      );

  /// Creates adapt BoxConstraints using h-w [SizeExtension].
  BoxConstraints get hw => copyWith(
        maxHeight: maxHeight.h,
        maxWidth: maxWidth.w,
        minHeight: minHeight.h,
        minWidth: minWidth.w,
      );

  BoxConstraints get w => copyWith(
        maxHeight: maxHeight.w,
        maxWidth: maxWidth.w,
        minHeight: minHeight.w,
        minWidth: minWidth.w,
      );

  BoxConstraints get h => copyWith(
        maxHeight: maxHeight.h,
        maxWidth: maxWidth.h,
        minHeight: minHeight.h,
        minWidth: minWidth.h,
      );
}

extension CheckScreenType on MediaQueryData {
  /// iPhone 6S
  /// |_ [portrait]
  ///    |_ size: 375.0x667.0, pixelRatio: 2.0, pixels: 750.0x1334.0
  ///       |_ diagonal: 765.1888655750291
  /// |_ [horizontal]
  ///    |_ size: 667.0x375.0, pixelRatio: 2.0, pixels: 1334.0x750.0
  ///       |_ diagonal: 765.1888655750291
//
  /// iPhone X
  /// |_ [portrait]
  ///    |_ size: 375.0x812.0, pixelRatio: 3.0, pixels: 1125.0x2436.0
  ///       |_ diagonal: 894.4098613052072
  /// |_ [horizontal]
  ///    |_ size: 812.0x375.0, pixelRatio: 3.0, pixels: 2436.0x1125.0
  ///       |_ diagonal: 894.4098613052072
//
  /// iPhone XS Max
  /// |_ [portrait]
  ///    |_ size: 414.0x896.0, pixelRatio: 3.0, pixels: 1242.0x2688.0
  ///       |_ diagonal: 987.0217829409845
  /// |_ [horizontal]
  ///    |_ size: 896.0x414.0, pixelRatio: 3.0, pixels: 2688.0x1242.0
  ///       |_ diagonal: 987.0217829409845
  bool get isMobile {
    Size size = this.size;
    double diagonal =
        sqrt((size.width * size.width) + (size.height * size.height));

    return diagonal < 1100.0;
  }

  /// iPad Pro (9.7-inch)
  /// |_ [portrait]
  ///    |_ size: 768.0x1024.0, pixelRatio: 2.0, pixels: 1536.0x2048.0
  ///       |_ diagonal: 1280.0
  /// |_ [horizontal]
  ///    |_ size: 1024.0x768.0, pixelRatio: 2.0, pixels: 2048.0x1536.0
  ///       |_ diagonal: 1280.0
//
  /// iPad Pro (10.5-inch)
  /// |_ [portrait]
  ///    |_ size: 834.0x1112.0, pixelRatio: 2.0, pixels: 1668.0x2224.0
  ///       |_ diagonal: 1390.0
  /// |_ [horizontal]
  ///    |_ size: 1112.0x834.0, pixelRatio: 2.0, pixels: 2224.0x1668.0
  ///       |_ diagonal: 1390.0
  /// iPad Pro (12.9-inch)
  /// |_ [portrait]
  ///    |_ size: 1024.0x1366.0, pixelRatio: 2.0, pixels: 2048.0x2732.0
  ///       |_ diagonal: 1707.2000468603555
  /// |_ [horizontal]
  ///    |_ size: 1366.0x1024.0, pixelRatio: 2.0, pixels: 2732.0x2048.0
  ///       |_ diagonal: 1707.2000468603555
  bool get isTablet {
    Size size = this.size;
    double diagonal =
        sqrt((size.width * size.width) + (size.height * size.height));
    return diagonal > 1100.0;
  }
}
