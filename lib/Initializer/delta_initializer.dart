/*
 * Created by 李卓原 on 2018/9/29.
 * email: zhuoyuan93@gmail.com
 */

import 'dart:async' show Completer;
import 'dart:math' show min, max;
import 'dart:ui' show FlutterView;

import 'package:flutter/material.dart';

class Delta {
  static const Size defaultSize = Size(360, 690);
  static final Delta data = Delta._();

  /// Size of the phone in UI Design , dp
  late Size _uiSize;

  ///Current orientation of screen
  late Orientation _orientation;

  late double _screenWidth;
  late double _screenHeight;
  late bool _minTextAdapt;
  BuildContext? _context;
  late bool _splitScreenMode;
  late ThemeData _themeData;
  Delta._();

  factory Delta() {
    return data;
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
    (data._elementsToRebuild ??= {}).add(context as Element);

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
      ThemeData? defaultTheme,
      bool minTextAdapt = false,
      bool scaleByHeight = false}) async {
    final mediaQueryContext =
        context.getElementForInheritedWidgetOfExactType<MediaQuery>();

    final initCompleter = Completer<void>();

    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) {
      mediaQueryContext?.visitChildElements((el) => data._context = el);
      if (data._context != null) initCompleter.complete();
    });

    final deviceData = MediaQuery.maybeOf(context).nonEmptySizeOrNull();
    final deviceSize = deviceData?.size ?? designSize;
    final orientation = deviceData?.orientation ??
        (deviceSize.width > deviceSize.height
            ? Orientation.landscape
            : Orientation.portrait);

    data
      .._context = scaleByHeight ? null : context
      .._uiSize = designSize
      .._themeData = defaultTheme ?? Theme.of(context)
      .._splitScreenMode = splitScreenMode
      .._minTextAdapt = minTextAdapt
      .._orientation = orientation
      .._screenWidth = scaleByHeight
          ? (deviceSize.height * designSize.width) / designSize.height
          : deviceSize.width
      .._screenHeight = deviceSize.height;

    data._elementsToRebuild?.forEach((el) => el.markNeedsBuild());

    return initCompleter.future;
  }

  ///Get screen orientation
  Orientation get orientation => _orientation;

  /// The number of font pixels for each logical pixel.
  double get textScaleFactor =>
      _context != null ? MediaQuery.of(_context!).textScaleFactor : 1;

  /// The size of the media in logical pixels (e.g, the size of the screen).
  double get pixelRatio =>
      _context != null ? MediaQuery.of(_context!).devicePixelRatio : 1;

  /// The horizontal extent of this size.
  double get width =>
      _context != null ? MediaQuery.of(_context!).size.width : _screenWidth;

  ///The vertical extent of this size. dp
  double get height =>
      _context != null ? MediaQuery.of(_context!).size.height : _screenHeight;

  /// The offset from the top, in dp
  double get statusBarHeight =>
      _context == null ? 0 : MediaQuery.of(_context!).padding.top;

  /// The offset from the bottom, in dp
  double get bottomBarHeight =>
      _context == null ? 0 : MediaQuery.of(_context!).padding.bottom;

  /// The ratio of actual width to UI design
  double get scaleWidth => width / _uiSize.width;

  ///  /// The ratio of actual height to UI design
  double get scaleHeight =>
      (_splitScreenMode ? max(height, 700) : height) / _uiSize.height;

  double get scaleText =>
      _minTextAdapt ? min(scaleWidth, scaleHeight) : scaleWidth;

  /// Adapted to the device width of the UI Design.
  /// Height can also be adapted according to this to ensure no deformation ,
  /// if you want a square
  double adaptiveWidth(num width) => width * scaleWidth;

  /// Highly adaptable to the device according to UI Design
  /// It is recommended to use this method to achieve a high degree of adaptation
  /// when it is found that one screen in the UI design
  /// does not match the current style effect, or if there is a difference in shape.
  double adaptiveHeight(num height) => height * scaleHeight;

  ///Adapt according to the smaller of width or height
  double radius(num r) => r * min(scaleWidth, scaleHeight);

  ///double pixels is the value you want to convert from pixels to Flutter units.
  /// MediaQuery.of(context).devicePixelRatio retrieves the device's pixel ratio, which represents the number of physical pixels on the screen for each logical pixel in Flutter.
  /// pixels / pixelRatio performs the conversion by dividing the input pixels by the pixel ratio.
  double pixelsToFlutterUnits(num pixels) {
    return pixels.toDouble() / pixelRatio;
  }

  /// To convert a Flutter unit (e.g., double) to pixels (px), you can use the MediaQuery class to access the device's pixel ratio and then multiply the value you want to convert by this ratio.
  double flutterUnitToPixels(num flutterUnit) {
    return flutterUnit.toDouble() * pixelRatio;
  }

  ///Font size adaptation method
  ///- [fontSize] The size of the font on the UI design, in dp.
  double setSp(num fontSize) => fontSize * scaleText;

  // Widget setVerticalSpacing(num height) =>
  //     SizedBox(height: adaptiveHeight(height));
  //
  // Widget setHorizontalSpacing(num width) =>
  //     SizedBox(width: adaptiveWidth(width));

  // Widget setHorizontalSpacingRadius(num width) =>
  //     SizedBox(width: radius(width));
  //
  // Widget setVerticalSpacingRadius(num height) =>
  //     SizedBox(height: radius(height));

  ///**********************************************      D       *************************************************
  ///**********************************************       E       ************************************************
  ///**********************************************        L       ***********************************************
  ///**********************************************         T       **********************************************
  ///**********************************************          A       *********************************************
  ///**********************************************             **************************************************
  ///**********************************************             **************************************************
  ///**********************************************      T       *************************************************
  ///**********************************************       H       ************************************************
  ///**********************************************        E       ***********************************************
  ///**********************************************         M       **********************************************
  ///**********************************************          E       *********************************************
  /// Defines the configuration of the overall visual [Theme] for a [MaterialApp]
  /// or a widget subtree within the app.
  ///
  /// The [MaterialApp] theme property can be used to configure the appearance
  /// of the entire app. Widget subtrees within an app can override the app's
  /// theme by including a [Theme] widget at the top of the subtree.
  ///
  /// Widgets whose appearance should align with the overall theme can obtain the
  /// current theme's configuration with [Theme.of]. Material components typically
  /// depend exclusively on the [colorScheme] and [textTheme]. These properties
  /// are guaranteed to have non-null values.
  ///
  /// The static [Theme.of] method finds the [ThemeData] value specified for the
  /// nearest [BuildContext] ancestor. This lookup is inexpensive, essentially
  /// just a single HashMap access. It can sometimes be a little confusing
  /// because [Theme.of] can not see a [Theme] widget that is defined in the
  /// current build method's context. To overcome that, create a new custom widget
  /// for the subtree that appears below the new [Theme], or insert a widget
  /// that creates a new BuildContext, like [Builder].
  ///
  /// {@tool snippet}
  /// In this example, the [Container] widget uses [Theme.of] to retrieve the
  /// primary color from the theme's [colorScheme] to draw an amber square.
  /// The [Builder] widget separates the parent theme's [BuildContext] from the
  /// child's [BuildContext].
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/theme_data.png)
  ///
  /// ```dart
  /// Theme(
  ///   data: ThemeData.from(
  ///     colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber),
  ///   ),
  ///   child: Builder(
  ///     builder: (BuildContext context) {
  ///       return Container(
  ///         width: 100,
  ///         height: 100,
  ///         color: Theme.of(context).colorScheme.primary,
  ///       );
  ///     },
  ///   ),
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// {@tool snippet}
  ///
  /// This sample creates a [MaterialApp] with a [Theme] whose
  /// [ColorScheme] is based on [Colors.blue], but with the color
  /// scheme's [ColorScheme.secondary] color overridden to be green. The
  /// [AppBar] widget uses the color scheme's [ColorScheme.primary] as
  /// its default background color and the [FloatingActionButton] widget
  /// uses the color scheme's [ColorScheme.secondary] for its default
  /// background. By default, the [Text] widget uses
  /// [TextTheme.bodyMedium], and the color of that [TextStyle] has been
  /// changed to purple.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/material/material_app_theme_data.png)
  ///
  /// ```dart
  /// MaterialApp(
  ///   theme: ThemeData(
  ///     colorScheme: ColorScheme.fromSwatch().copyWith(
  ///       secondary: Colors.green,
  ///     ),
  ///     textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.purple)),
  ///   ),
  ///   home: Scaffold(
  ///     appBar: AppBar(
  ///       title: const Text('ThemeData Demo'),
  ///     ),
  ///     floatingActionButton: FloatingActionButton(
  ///       child: const Icon(Icons.add),
  ///       onPressed: () {},
  ///     ),
  ///     body: const Center(
  ///       child: Text('Button pressed 0 times'),
  ///     ),
  ///   ),
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// See <https://material.io/design/color/> for
  /// more discussion on how to pick the right colors.

  ThemeData get theme => _themeData;

  Color get primaryColor => _themeData.primaryColor;

  /// The platform the material widgets should adapt to target.
  /// Defaults to the current platform, as exposed by defaultTargetPlatform. This should be used in order to style UI elements according to platform conventions.
  /// Widgets from the Delta library should use this getter (via Delta.data) to determine the current platform for the purpose of emulating the platform behavior (e.g. scrolling or haptic effects). Widgets and render objects at lower layers that try to emulate the underlying platform can depend on defaultTargetPlatform directly, or may require that the target platform be provided as an argument. The dart:io.Platform object should only be used directly when it's critical to actually know the current platform, without any overrides possible (for example, when a system API is about to be called).
  /// In a test environment, the platform returned is TargetPlatform.android regardless of the host platform. (Android was chosen because the tests were originally written assuming Android-like behavior, and we added platform adaptations for other platforms later). Tests can check behavior for other platforms by setting the platform of the Theme explicitly to another TargetPlatform value, or by setting debugDefaultTargetPlatformOverride.
  /// Determines the defaults for typography and materialTapTargetSize.
  TargetPlatform get platform => _themeData.platform;

  ///Text with a color that contrasts with the card and canvas colors.
  TextTheme get textTheme => _themeData.textTheme;
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
