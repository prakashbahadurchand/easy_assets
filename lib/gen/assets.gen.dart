/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Raleway-Italic.ttf
  String get ralewayItalic => 'assets/fonts/Raleway-Italic.ttf';

  /// File path: assets/fonts/Raleway-Regular.ttf
  String get ralewayRegular => 'assets/fonts/Raleway-Regular.ttf';

  /// File path: assets/fonts/RobotoMono-Bold.ttf
  String get robotoMonoBold => 'assets/fonts/RobotoMono-Bold.ttf';

  /// File path: assets/fonts/RobotoMono-Regular.ttf
  String get robotoMonoRegular => 'assets/fonts/RobotoMono-Regular.ttf';

  /// List of all assets
  List<String> get values =>
      [ralewayItalic, ralewayRegular, robotoMonoBold, robotoMonoRegular];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/img_dog.jpg
  AssetGenImage get imgDog => const AssetGenImage('assets/images/img_dog.jpg');

  /// File path: assets/images/img_person.jpg
  AssetGenImage get imgPerson =>
      const AssetGenImage('assets/images/img_person.jpg');

  /// File path: assets/images/svg_fuchsia.svg
  String get svgFuchsia => 'assets/images/svg_fuchsia.svg';

  /// File path: assets/images/svg_kmm.svg
  String get svgKmm => 'assets/images/svg_kmm.svg';

  /// File path: assets/images/svg_paint.svg
  String get svgPaint => 'assets/images/svg_paint.svg';

  /// File path: assets/images/svg_target.svg
  String get svgTarget => 'assets/images/svg_target.svg';

  /// List of all assets
  List<dynamic> get values =>
      [imgDog, imgPerson, svgFuchsia, svgKmm, svgPaint, svgTarget];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/alarm-clock-lottie-v440.json
  String get alarmClockLottieV440 =>
      'assets/lottie/alarm-clock-lottie-v440.json';

  /// File path: assets/lottie/geometrical-animation.json
  String get geometricalAnimation => 'assets/lottie/geometrical-animation.json';

  /// File path: assets/lottie/hamburger_arrow.json
  String get hamburgerArrow => 'assets/lottie/hamburger_arrow.json';

  /// List of all assets
  List<String> get values =>
      [alarmClockLottieV440, geometricalAnimation, hamburgerArrow];
}

class $AssetsSoundsGen {
  const $AssetsSoundsGen();

  /// File path: assets/sounds/sound_scanner_alert.mp3
  String get soundScannerAlert => 'assets/sounds/sound_scanner_alert.mp3';

  /// List of all assets
  List<String> get values => [soundScannerAlert];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
  static const $AssetsSoundsGen sounds = $AssetsSoundsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
