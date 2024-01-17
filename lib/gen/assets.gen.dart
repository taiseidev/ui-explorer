/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsUiGen {
  const $AssetsUiGen();

  $AssetsUiUberEatsGen get uberEats => const $AssetsUiUberEatsGen();
}

class $AssetsUiUberEatsGen {
  const $AssetsUiUberEatsGen();

  $AssetsUiUberEatsPngGen get png => const $AssetsUiUberEatsPngGen();
  $AssetsUiUberEatsSvgGen get svg => const $AssetsUiUberEatsSvgGen();
}

class $AssetsUiUberEatsPngGen {
  const $AssetsUiUberEatsPngGen();

  /// File path: assets/ui/uber_eats/png/camera-dynamic-color.png
  AssetGenImage get cameraDynamicColor =>
      const AssetGenImage('assets/ui/uber_eats/png/camera-dynamic-color.png');

  /// File path: assets/ui/uber_eats/png/headphone-dynamic-color.png
  AssetGenImage get headphoneDynamicColor => const AssetGenImage(
      'assets/ui/uber_eats/png/headphone-dynamic-color.png');

  /// File path: assets/ui/uber_eats/png/mic-dynamic-color.png
  AssetGenImage get micDynamicColor =>
      const AssetGenImage('assets/ui/uber_eats/png/mic-dynamic-color.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [cameraDynamicColor, headphoneDynamicColor, micDynamicColor];
}

class $AssetsUiUberEatsSvgGen {
  const $AssetsUiUberEatsSvgGen();

  /// File path: assets/ui/uber_eats/svg/camera-dynamic-color.svg
  String get cameraDynamicColor =>
      'assets/ui/uber_eats/svg/camera-dynamic-color.svg';

  /// File path: assets/ui/uber_eats/svg/fire-dynamic-color.svg
  String get fireDynamicColor =>
      'assets/ui/uber_eats/svg/fire-dynamic-color.svg';

  /// File path: assets/ui/uber_eats/svg/hash-dynamic-color.svg
  String get hashDynamicColor =>
      'assets/ui/uber_eats/svg/hash-dynamic-color.svg';

  /// File path: assets/ui/uber_eats/svg/headphone-dynamic-color.svg
  String get headphoneDynamicColor =>
      'assets/ui/uber_eats/svg/headphone-dynamic-color.svg';

  /// File path: assets/ui/uber_eats/svg/mic-dynamic-color.svg
  String get micDynamicColor => 'assets/ui/uber_eats/svg/mic-dynamic-color.svg';

  /// List of all assets
  List<String> get values => [
        cameraDynamicColor,
        fireDynamicColor,
        hashDynamicColor,
        headphoneDynamicColor,
        micDynamicColor
      ];
}

class Assets {
  Assets._();

  static const $AssetsUiGen ui = $AssetsUiGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
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
