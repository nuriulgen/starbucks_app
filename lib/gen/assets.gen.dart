/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/amount_coffe.png
  AssetGenImage get amountCoffe =>
      const AssetGenImage('assets/images/amount_coffe.png');

  /// File path: assets/images/campaigns_image.png
  AssetGenImage get campaignsImage =>
      const AssetGenImage('assets/images/campaigns_image.png');

  /// File path: assets/images/card_background.png
  AssetGenImage get cardBackground =>
      const AssetGenImage('assets/images/card_background.png');

  /// File path: assets/images/drinks_caramel.png
  AssetGenImage get drinksCaramel =>
      const AssetGenImage('assets/images/drinks_caramel.png');

  /// File path: assets/images/drinks_espresso.png
  AssetGenImage get drinksEspresso =>
      const AssetGenImage('assets/images/drinks_espresso.png');

  /// File path: assets/images/drinks_hazelnut.png
  AssetGenImage get drinksHazelnut =>
      const AssetGenImage('assets/images/drinks_hazelnut.png');

  /// File path: assets/images/drinks_mocha.png
  AssetGenImage get drinksMocha =>
      const AssetGenImage('assets/images/drinks_mocha.png');

  /// File path: assets/images/gold_star.png
  AssetGenImage get goldStar =>
      const AssetGenImage('assets/images/gold_star.png');

  /// File path: assets/images/grande.png
  AssetGenImage get grande => const AssetGenImage('assets/images/grande.png');

  /// File path: assets/images/green_cup.png
  AssetGenImage get greenCup =>
      const AssetGenImage('assets/images/green_cup.png');

  /// File path: assets/images/green_star.png
  AssetGenImage get greenStar =>
      const AssetGenImage('assets/images/green_star.png');

  /// File path: assets/images/ic_mastercard.png
  AssetGenImage get icMastercard =>
      const AssetGenImage('assets/images/ic_mastercard.png');

  /// File path: assets/images/ic_success.png
  AssetGenImage get icSuccess =>
      const AssetGenImage('assets/images/ic_success.png');

  /// File path: assets/images/login_background.png
  AssetGenImage get loginBackground =>
      const AssetGenImage('assets/images/login_background.png');

  /// File path: assets/images/navigation_.cup.png
  AssetGenImage get navigationCup =>
      const AssetGenImage('assets/images/navigation_.cup.png');

  /// File path: assets/images/navigation_.location.png
  AssetGenImage get navigationLocation =>
      const AssetGenImage('assets/images/navigation_.location.png');

  /// File path: assets/images/navigation_.payment.png
  AssetGenImage get navigationPayment =>
      const AssetGenImage('assets/images/navigation_.payment.png');

  /// File path: assets/images/navigation_star.png
  AssetGenImage get navigationStar =>
      const AssetGenImage('assets/images/navigation_star.png');

  /// File path: assets/images/notification _icon.png
  AssetGenImage get notificationIcon =>
      const AssetGenImage('assets/images/notification _icon.png');

  /// File path: assets/images/splash_screen.png
  AssetGenImage get splashScreen =>
      const AssetGenImage('assets/images/splash_screen.png');

  /// File path: assets/images/starbucks_text.png
  AssetGenImage get starbucksText =>
      const AssetGenImage('assets/images/starbucks_text.png');

  /// File path: assets/images/tall.png
  AssetGenImage get tall => const AssetGenImage('assets/images/tall.png');

  /// File path: assets/images/venti.png
  AssetGenImage get venti => const AssetGenImage('assets/images/venti.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        amountCoffe,
        campaignsImage,
        cardBackground,
        drinksCaramel,
        drinksEspresso,
        drinksHazelnut,
        drinksMocha,
        goldStar,
        grande,
        greenCup,
        greenStar,
        icMastercard,
        icSuccess,
        loginBackground,
        navigationCup,
        navigationLocation,
        navigationPayment,
        navigationStar,
        notificationIcon,
        splashScreen,
        starbucksText,
        tall,
        venti
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
