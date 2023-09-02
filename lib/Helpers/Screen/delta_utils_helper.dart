/*
 * Created by 李卓原 on 2018/9/29.
 * email: zhuoyuan93@gmail.com
 */

import 'dart:math' show min, max;
import 'dart:ui' show FlutterView;
import 'dart:async' show Completer;

import 'package:flutter/widgets.dart';

class DeltaHelper {
  static const Size defaultSize = Size(360, 690);
  static final DeltaHelper _instance = DeltaHelper._();

   /// Size of the phone in UI Design , dp
  late Size _uiSize;

   ///Current orientation of screen
   late Orientation _orientation;

  late double _screenWidth;
  late double _screenHeight;
  late bool _minTextAdapt;
  BuildContext? _context;
  late bool _splitScreenMode;

  DeltaHelper._();

  factory DeltaHelper() {
    return _instance;
  }

  /// Manually wait for window size to be initialized
  ///
  /// `Recommended` to use before you need access window size
  /// or in custom splash/bootstrap screen [FutureBuilder]
  ///
  /// example:
  /// ```dart
  /// ...
  /// ScreenUtil.init(context, ...);
  /// ...
  ///   FutureBuilder(
  ///     future: Future.wait([..., ensureScreenSize(), ...]),
  ///     builder: (context, snapshot) {
  ///       if (snapshot.hasData) return const HomeScreen();
  ///       return Material(
  ///         child: LayoutBuilder(
  ///           ...
  ///         ),
  ///       );
  ///     },
  ///   )
  /// ```
  static Future<void> ensureScreenSize([
    FlutterView? window,
    Duration duration = const Duration(milliseconds: 10),
  ]) async {
    final binding = WidgetsFlutterBinding.ensureInitialized();
    window ??= WidgetsBinding.instance.platformDispatcher.implicitView;

    if (window?.physicalGeometry.isEmpty == true) {
      return Future.delayed(duration, () async {
        binding.deferFirstFrame();
        await ensureScreenSize(window, duration);
        return binding.allowFirstFrame();
      });
    }
  }

  Set<Element>? _elementsToRebuild;

  /// ### Experimental
  /// Register current page and all its descendants to rebuild.
  /// Helpful when building for web and desktop
  static void registerToBuild(
      BuildContext context, [
        bool withDescendants = false,
      ]) {
    (_instance._elementsToRebuild ??= {}).add(context as Element);

    if (withDescendants) {
      context.visitChildren((element) {
        registerToBuild(element, true);
      });
    }
  }

  /// Initializing the library.
  static Future<void> init(BuildContext context,
      {Size designSize = defaultSize,
        bool splitScreenMode = false,
        bool minTextAdapt = false,
        bool scaleByHeight = false}) async {
    final mediaQueryContext =
    context.getElementForInheritedWidgetOfExactType<MediaQuery>();

    final initCompleter = Completer<void>();

    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
      mediaQueryContext?.visitChildElements((el) => _instance._context = el);
      if (_instance._context != null) initCompleter.complete();
    });

    final deviceData = MediaQuery.maybeOf(context).nonEmptySizeOrNull();

    final deviceSize = deviceData?.size ?? designSize;
    final orientation = deviceData?.orientation ??
        (deviceSize.width > deviceSize.height
            ? Orientation.landscape
            : Orientation.portrait);
     _instance
      .._context = scaleByHeight ? null : context
      .._uiSize = designSize
      .._splitScreenMode = splitScreenMode
      .._minTextAdapt = minTextAdapt
      .._orientation = orientation
      .._screenWidth = scaleByHeight
          ? (deviceSize.height * designSize.width) / designSize.height
          : deviceSize.width
      .._screenHeight = deviceSize.height;

    _instance._elementsToRebuild?.forEach((el) => el.markNeedsBuild());

    return initCompleter.future;
  }

   ///Get screen orientation
  Orientation get orientation => _orientation;

   /// The number of font pixels for each logical pixel.
  double get textScaleFactor =>
      _context != null ? MediaQuery.of(_context!).textScaleFactor : 1;

   /// The size of the media in logical pixels (e.g, the size of the screen).
  double? get pixelRatio =>
      _context != null ? MediaQuery.of(_context!).devicePixelRatio : 1;

   /// The horizontal extent of this size.
  double get screenWidth =>
      _context != null ? MediaQuery.of(_context!).size.width : _screenWidth;

   ///The vertical extent of this size. dp
  double get screenHeight =>
      _context != null ? MediaQuery.of(_context!).size.height : _screenHeight;

   /// The offset from the top, in dp
  double get statusBarHeight =>
      _context == null ? 0 : MediaQuery.of(_context!).padding.top;

   /// The offset from the bottom, in dp
  double get bottomBarHeight =>
      _context == null ? 0 : MediaQuery.of(_context!).padding.bottom;

   /// The ratio of actual width to UI design
  double get scaleWidth => screenWidth / _uiSize.width;

  ///  /// The ratio of actual height to UI design
  double get scaleHeight =>
      (_splitScreenMode ? max(screenHeight, 700) : screenHeight) /
          _uiSize.height;

  double get scaleText =>
      _minTextAdapt ? min(scaleWidth, scaleHeight) : scaleWidth;


  /// Adapted to the device width of the UI Design.
  /// Height can also be adapted according to this to ensure no deformation ,
  /// if you want a square
  double setWidth(num width) => width * scaleWidth;

  /// Highly adaptable to the device according to UI Design
  /// It is recommended to use this method to achieve a high degree of adaptation
  /// when it is found that one screen in the UI design
  /// does not match the current style effect, or if there is a difference in shape.
  double setHeight(num height) => height * scaleHeight;

   ///Adapt according to the smaller of width or height
  double radius(num r) => r * min(scaleWidth, scaleHeight);

   ///Font size adaptation method
  ///- [fontSize] The size of the font on the UI design, in dp.
  double setSp(num fontSize) => fontSize * scaleText;

  Widget setVerticalSpacing(num height) => SizedBox(height: setHeight(height));

  Widget setVerticalSpacingFromWidth(num height) =>
      SizedBox(height: setWidth(height));

  Widget setHorizontalSpacing(num width) => SizedBox(width: setWidth(width));

  Widget setHorizontalSpacingRadius(num width) =>
      SizedBox(width: radius(width));

  Widget setVerticalSpacingRadius(num height) =>
      SizedBox(height: radius(height));
}

extension on MediaQueryData? {
  MediaQueryData? nonEmptySizeOrNull() {
    if (this?.size.isEmpty ?? true) {
      return null;
    } else {
      return this;
    }
  }
}
