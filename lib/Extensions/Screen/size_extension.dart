import 'dart:math';

import 'package:delta/Helpers/Screen/delta_utils_helper.dart';
import 'package:flutter/material.dart';

extension SizeExtension on num {
  ///[DeltaHelper.setWidth]
  double get w => DeltaHelper().setWidth(this);

  ///[DeltaHelper.setHeight]
  double get h => DeltaHelper().setHeight(this);

  ///[DeltaHelper.radius]
  double get r => DeltaHelper().radius(this);

  ///[DeltaHelper.setSp]
  double get sp => DeltaHelper().setSp(this);

  ///smart size :  it check your value - if it is bigger than your value it will set your value
  ///for example, you have set 16.sm() , if for your screen 16.sp() is bigger than 16 , then it will set 16 not 16.sp()
  ///I think that it is good for save size balance on big sizes of screen
  double get spMin => min(toDouble(), sp);

  double get spMax => max(toDouble(), sp);

  ///Multiple of screen width
  double get sw => DeltaHelper().screenWidth * this;

  ///Multiple of screen height
  double get sh => DeltaHelper().screenHeight * this;

  ///[DeltaHelper.setHeight]
  Widget get verticalSpace => DeltaHelper().setVerticalSpacing(this);

  ///[DeltaHelper.setVerticalSpacingFromWidth]
  Widget get verticalSpaceFromWidth =>
      DeltaHelper().setVerticalSpacingFromWidth(this);

  ///[DeltaHelper.setWidth]
  Widget get horizontalSpace => DeltaHelper().setHorizontalSpacing(this);

  ///[DeltaHelper.radius]
  Widget get horizontalSpaceRadius =>
      DeltaHelper().setHorizontalSpacingRadius(this);

  ///[DeltaHelper.radius]
  Widget get verticalSpacingRadius =>
      DeltaHelper().setVerticalSpacingRadius(this);
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
