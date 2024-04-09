// import 'package:delta/Data/delta_data.dart';
// import 'package:delta/Initializer/delta_initializer.dart';
// import 'package:flutter/material.dart';
//
// class DeltaApp extends StatefulWidget {
//   /// A helper widget that initializes [Delta]
//   /// Access to Media Query and Theme data without using context,,
//   ///
//   /// [Delta.data.theme] to access ThemeData,
//   ///
//   /// [Delta.data.width] to access current screen width
//   const DeltaApp(
//       {Key? key,
//       required this.builder,
//       this.child,
//       this.theme,
//       this.changeState = SetState.onAll,
//       this.size = Delta.defaultSize,
//       this.splitMode = false,
//       this.minTextAdaptation = false,
//       this.useInheritedMediaQuery = false,
//       this.scaleByHeight = false})
//       : super(key: key);
//
//   final DeltaBuilder builder;
//   final Widget? child;
//   final ThemeData? theme;
//
//   ///Ensure that the screen is Split or not
//   final bool splitMode;
//   final bool minTextAdaptation;
//   final bool useInheritedMediaQuery;
//   final bool scaleByHeight;
//   final DeltaRebuildCase changeState;
//
//   /// The [Size] of the device in the design draft, in dp
//   final Size size;
//
//   @override
//   State<DeltaApp> createState() => _DeltaAppState();
// }
//
// class _DeltaAppState extends State<DeltaApp> with WidgetsBindingObserver {
//   MediaQueryData? _mediaQueryData;
//
//   bool wrappedInMediaQuery = false;
//   ThemeData? theme;
//
//   @override
//   void initState() {
//     super.initState();
//     binding.addObserver(this);
//     theme = widget.theme ?? Theme.of(context);
//   }
//
//   @override
//   void didChangeMetrics() {
//     final old = _mediaQueryData!;
//     final data = newData;
//
//     if (widget.scaleByHeight || widget.changeState(old, data)) {
//       _mediaQueryData = data;
//       _updateElement(context as Element);
//     }
//   }
//
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     _mediaQueryData ??= newData;
//     didChangeMetrics();
//   }
//
//   @override
//   void dispose() {
//     binding.removeObserver(this);
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // WidgetsBinding.instance.addPostFrameCallback((_) {
//     Delta.init(
//       context,
//       designSize: widget.size,
//       splitScreenMode: widget.splitMode,
//       minTextAdapt: widget.minTextAdaptation,
//       scaleByHeight: widget.scaleByHeight,
//     );
//     // });
//     if (mediaQueryData.size == Size.zero) return zeroSize();
//     if (!wrappedInMediaQuery) {
//       return notWrapped(context);
//     }
//     if (isMaterialApp(context)) {
//       if (widget.theme != null) {
//         return wrapped(context);
//       } else {
//         return ErrorWidget(
//             "Package Error: Sorry we couldn't found MaterialApp in the nearest ancestors to use Theme.of(context).\n Here is the solution: To Solve this issue please provide a [ThemeData] to theme property or wrap a DeltaApp in MaterialApp Widget");
//       }
//     }
//     return wrapped(context);
//   }
//
//   ///When There is zero size in MediaQuery
//   Widget zeroSize() => const SizedBox.shrink();
//
//   ///When the widget is not wrapped in MediaQuery
//   Widget notWrapped(BuildContext context) {
//     return MediaQuery(
//       data: mediaQueryData,
//       child: Builder(
//         builder: (context) {
//           // Using post-frame callback to perform an action after the first frame is rendered
//           // // WidgetsBinding.instance.addPostFrameCallback((_) {
//           // Delta.init(
//           //   context,
//           //   designSize: widget.size,
//           //   splitScreenMode: widget.splitMode,
//           //   minTextAdapt: widget.minTextAdaptation,
//           //   scaleByHeight: widget.scaleByHeight,
//           // );
//           // });
//
//           final deviceData = MediaQuery.maybeOf(context);
//           final deviceSize = deviceData?.size ?? widget.size;
//           return MediaQuery(
//             data: MediaQueryData.fromView(View.of(context)),
//             child: SizedBox(
//               width: deviceSize.width,
//               height: deviceSize.height,
//               child: FittedBox(
//                 fit: BoxFit.none,
//                 alignment: Alignment.center,
//                 child: SizedBox(
//                   width: widget.scaleByHeight
//                       ? (deviceSize.height * widget.size.width) /
//                           widget.size.height
//                       : deviceSize.width,
//                   height: deviceSize.height,
//                   child: widget.builder(context, widget.child),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   ///When the widget is Wrapped in MediaQuery
//   Widget wrapped(BuildContext context) {
//     // Using post-frame callback to perform an action after the first frame is rendered
//     // WidgetsBinding.instance.addPostFrameCallback((_) {
//     // Delta.init(
//     //   context,
//     //   designSize: widget.size,
//     //   splitScreenMode: widget.splitMode,
//     //   minTextAdapt: widget.minTextAdaptation,
//     //   scaleByHeight: widget.scaleByHeight,
//     // );
//     // });
//
//     final deviceData = MediaQuery.maybeOf(context);
//     final deviceSize = deviceData?.size ?? widget.size;
//     return SizedBox(
//       width: deviceSize.width,
//       height: deviceSize.height,
//       child: FittedBox(
//         fit: BoxFit.none,
//         alignment: Alignment.center,
//         child: SizedBox(
//           width: widget.scaleByHeight
//               ? (deviceSize.height * widget.size.width) / widget.size.height
//               : deviceSize.width,
//           height: deviceSize.height,
//           child: widget.builder(context, widget.child),
//         ),
//       ),
//     );
//   }
//
//   ///Check if the parent is MaterialApp or not
//   bool isMaterialApp(BuildContext context) {
//     return context.findAncestorWidgetOfExactType<MaterialApp>() != null;
//   }
//
//   void _updateElement(Element el) {
//     el.markNeedsBuild();
//     el.visitChildren(_updateElement);
//   }
//
//   WidgetsBinding get binding => WidgetsFlutterBinding.ensureInitialized();
//
//   MediaQueryData get mediaQueryData => _mediaQueryData!;
//
//   MediaQueryData get newData {
//     final data = MediaQuery.maybeOf(context);
//
//     if (data != null) {
//       if (widget.useInheritedMediaQuery) {
//         wrappedInMediaQuery = true;
//       }
//       return data;
//     }
//
//     return MediaQueryData.fromView(View.of(context));
//   }
// }
