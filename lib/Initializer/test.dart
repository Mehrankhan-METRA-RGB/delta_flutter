import 'package:flutter/material.dart';

class TestDelta {
  // Private constructor
  TestDelta._(this._mediaQueryData, this._themeData);

  static TestDelta? data;

  // Factory constructor to access the instance
  factory TestDelta(BuildContext context) {
    data ??= TestDelta._(MediaQuery.of(context), Theme.of(context));

    return data!;
  }

  ///**********************************************       D       *************************************************
  ///**********************************************        E       *************************************************
  ///**********************************************         L       *************************************************
  ///**********************************************          T        *************************************************
  ///**********************************************           A         *************************************************
  ///**********************************************       M       *************************************************
  ///**********************************************        E       *************************************************
  ///**********************************************         D       *************************************************
  ///**********************************************          I       *************************************************
  ///**********************************************           A       *************************************************
  ///**********************************************              *************************************************
  ///**********************************************       Q       *************************************************
  ///**********************************************        U        *************************************************
  ///**********************************************         E        *************************************************
  ///**********************************************          R        *************************************************
  ///**********************************************           I        *************************************************
  ///**********************************************            E        *************************************************
  ///**********************************************             S        *************************************************

  final MediaQueryData _mediaQueryData;

  ///Establishes a subtree in which media queries resolve to the given data.
  /// For example, to learn the size of the current media (e.g., the window containing your app), you can use MediaQuery.sizeOf: MediaQuery.sizeOf(context).
  /// Querying the current media using specific methods (for example, MediaQuery.sizeOf and MediaQuery.paddingOf) will cause your widget to rebuild automatically whenever the property you query changes.
  /// On the other hand, querying using MediaQuery.of will cause your widget to rebuild automatically whenever any field of the MediaQueryData changes (e.g., if the user rotates their device). Therefore, if you are only concerned with one or a few fields of MediaQueryData, prefer using the specific methods (for example: MediaQuery.sizeOf and MediaQuery.paddingOf).
  /// If no MediaQuery is in scope then the series of methods like MediaQuery.of and MediaQuery.sizeOf will throw an exception. Alternatively, the "maybe-" variant methods (such as MediaQuery.maybeOf and MediaQuery.maybeSizeOf) can be used, which returns null instead of throwing if no MediaQuery is in scope
  MediaQueryData get mediaQuery => _mediaQueryData;

  double get width => _mediaQueryData.size.width;

  double get height => _mediaQueryData.size.height;

  ///The number of font pixels for each logical pixel.
  /// For example, if the text scale factor is 1.5, text will be 50% larger than the specified font size.
  /// See also:
  /// MediaQuery.textScaleFactorOf, a method to find and depend on the textScaleFactor defined for a BuildContext
  double get scale => _mediaQueryData.textScaleFactor;

  /// The orientation of the media (e.g., whether the device is in landscape or portrait mode).
  Orientation get orientation => _mediaQueryData.orientation;

  ///The offset from the top.
  double get statusBarSize => _mediaQueryData.padding.top;

  ///This is the space  of the area where is android OS Navigation bottoms  available like, [BACK,CURRENT,OPTION]
  double get bottomNavSize => _mediaQueryData.padding.bottom;

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

  final ThemeData _themeData;

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
