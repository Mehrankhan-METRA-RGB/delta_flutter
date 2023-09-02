import 'package:delta/Data/delta_data.dart';
import 'package:delta/Helpers/Screen/delta_utils_helper.dart';
import 'package:flutter/material.dart';

class DeltaApp extends StatefulWidget {
  /// A helper widget that initializes [DeltaHelper]
  const DeltaApp(
      {Key? key,
      required this.builder,
      this.child,
      this.theme,
      this.rebuildFactor = RebuildCases.all,
      this.designSize = DeltaHelper.defaultSize,
      this.splitScreenMode = false,
      this.minTextAdapt = false,
      this.useInheritedMediaQuery = false,
      this.scaleByHeight = false})
      : super(key: key);

  final DeltaBuilder builder;
  final Widget? child;
  final ThemeData? theme;
  final bool splitScreenMode;
  final bool minTextAdapt;
  final bool useInheritedMediaQuery;
  final bool scaleByHeight;
  final DeltaRebuildCase rebuildFactor;

  /// The [Size] of the device in the design draft, in dp
  final Size designSize;

  @override
  State<DeltaApp> createState() => _DeltaAppState();
}

class _DeltaAppState extends State<DeltaApp> with WidgetsBindingObserver {
  MediaQueryData? _mediaQueryData;

  bool wrappedInMediaQuery = false;
  ThemeData? theme;

  @override
  void initState() {
    super.initState();
    binding.addObserver(this);
    theme = widget.theme ?? Theme.of(context);
  }

  @override
  void didChangeMetrics() {
    final old = _mediaQueryData!;
    final data = newData;

    if (widget.scaleByHeight || widget.rebuildFactor(old, data)) {
      _mediaQueryData = data;
      _updateElementInTree(context as Element);
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _mediaQueryData ??= newData;
    didChangeMetrics();
  }

  @override
  void dispose() {
    binding.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (mediaQueryData.size == Size.zero) return zeroSize();
    if (!wrappedInMediaQuery) {
      return notWrapped(context);
    }
    if (isMaterialApp(context)) {
      if (widget.theme != null) {
        return wrapped(context);
      } else {
        return ErrorWidget(
            "Package Error: Sorry we couldn't found MaterialApp in the nearest ancestors to use Theme.of(context).\n Here is the solution: To Solve this issue please provide a [ThemeData] to theme object or wrap a DeltaApp in MaterialApp Widget");
      }
    }
    return wrapped(context);
  }

  ///When There is zero size in MediaQuery
  Widget zeroSize() => const SizedBox.shrink();

  ///When the widget is not wrapped in MediaQuery
  Widget notWrapped(BuildContext context) {
    return MediaQuery(
      data: mediaQueryData,
      child: Builder(
        builder: (context) {
          DeltaHelper.init(
            context,
            designSize: widget.designSize,
            splitScreenMode: widget.splitScreenMode,
            minTextAdapt: widget.minTextAdapt,
            scaleByHeight: widget.scaleByHeight,
          );
          final deviceData = MediaQuery.maybeOf(context);
          final deviceSize = deviceData?.size ?? widget.designSize;
          return MediaQuery(
            data: MediaQueryData.fromView(View.of(context)),
            child: SizedBox(
              width: deviceSize.width,
              height: deviceSize.height,
              child: FittedBox(
                fit: BoxFit.none,
                alignment: Alignment.center,
                child: SizedBox(
                  width: widget.scaleByHeight
                      ? (deviceSize.height * widget.designSize.width) /
                          widget.designSize.height
                      : deviceSize.width,
                  height: deviceSize.height,
                  child: widget.builder(context, widget.child),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  ///When the widget is Wrapped in media query
  Widget wrapped(BuildContext context) {
    DeltaHelper.init(
      context,
      designSize: widget.designSize,
      splitScreenMode: widget.splitScreenMode,
      minTextAdapt: widget.minTextAdapt,
      scaleByHeight: widget.scaleByHeight,
    );
    final deviceData = MediaQuery.maybeOf(context);
    final deviceSize = deviceData?.size ?? widget.designSize;
    return SizedBox(
      width: deviceSize.width,
      height: deviceSize.height,
      child: FittedBox(
        fit: BoxFit.none,
        alignment: Alignment.center,
        child: SizedBox(
          width: widget.scaleByHeight
              ? (deviceSize.height * widget.designSize.width) /
                  widget.designSize.height
              : deviceSize.width,
          height: deviceSize.height,
          child: widget.builder(context, widget.child),
        ),
      ),
    );
  }

  ///Check if the parent is MaterialApp or not
  bool isMaterialApp(BuildContext context) {
    return context.findAncestorWidgetOfExactType<MaterialApp>() != null;
  }

  void _updateElementInTree(Element el) {
    el.markNeedsBuild();
    el.visitChildren(_updateElementInTree);
  }

  WidgetsBinding get binding => WidgetsFlutterBinding.ensureInitialized();

  MediaQueryData get mediaQueryData => _mediaQueryData!;

  MediaQueryData get newData {
    final data = MediaQuery.maybeOf(context);

    if (data != null) {
      if (widget.useInheritedMediaQuery) {
        wrappedInMediaQuery = true;
      }
      return data;
    }

    return MediaQueryData.fromView(View.of(context));
  }
}
