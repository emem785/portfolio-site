/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/Beeep 3.png
  AssetGenImage get beeep3 => const AssetGenImage('assets/png/Beeep 3.png');

  /// File path: assets/png/Beeep 4.png
  AssetGenImage get beeep4 => const AssetGenImage('assets/png/Beeep 4.png');

  /// File path: assets/png/LibertyPay 3.png
  AssetGenImage get libertyPay3 =>
      const AssetGenImage('assets/png/LibertyPay 3.png');

  /// File path: assets/png/LibertyPay 4.png
  AssetGenImage get libertyPay4 =>
      const AssetGenImage('assets/png/LibertyPay 4.png');

  /// File path: assets/png/SmartParcel 3.png
  AssetGenImage get smartParcel3 =>
      const AssetGenImage('assets/png/SmartParcel 3.png');

  /// File path: assets/png/SmartParcel 4.png
  AssetGenImage get smartParcel4 =>
      const AssetGenImage('assets/png/SmartParcel 4.png');

  /// File path: assets/png/WhisperSms 3.png
  AssetGenImage get whisperSms3 =>
      const AssetGenImage('assets/png/WhisperSms 3.png');

  /// File path: assets/png/WhisperSms 4.png
  AssetGenImage get whisperSms4 =>
      const AssetGenImage('assets/png/WhisperSms 4.png');

  /// File path: assets/png/beeep_banner.png
  AssetGenImage get beeepBanner =>
      const AssetGenImage('assets/png/beeep_banner.png');

  /// File path: assets/png/liberty_banner.png
  AssetGenImage get libertyBanner =>
      const AssetGenImage('assets/png/liberty_banner.png');

  /// File path: assets/png/smart_parcel_banner.png
  AssetGenImage get smartParcelBanner =>
      const AssetGenImage('assets/png/smart_parcel_banner.png');

  /// File path: assets/png/whisper_banner.png
  AssetGenImage get whisperBanner =>
      const AssetGenImage('assets/png/whisper_banner.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        beeep3,
        beeep4,
        libertyPay3,
        libertyPay4,
        smartParcel3,
        smartParcel4,
        whisperSms3,
        whisperSms4,
        beeepBanner,
        libertyBanner,
        smartParcelBanner,
        whisperBanner
      ];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/Flutter Code.svg
  String get flutterCode => 'assets/svg/Flutter Code.svg';

  /// File path: assets/svg/Icon.svg
  String get icon => 'assets/svg/Icon.svg';

  /// File path: assets/svg/Liberty Pay logo 2 1.svg
  String get libertyPayLogo21 => 'assets/svg/Liberty Pay logo 2 1.svg';

  /// File path: assets/svg/Logo Int.svg
  String get logoInt => 'assets/svg/Logo Int.svg';

  /// File path: assets/svg/akar-icons_figma-fill.svg
  String get akarIconsFigmaFill => 'assets/svg/akar-icons_figma-fill.svg';

  /// File path: assets/svg/bxl_flutter.svg
  String get bxlFlutter => 'assets/svg/bxl_flutter.svg';

  /// File path: assets/svg/contact_github 1.svg
  String get contactGithub1 => 'assets/svg/contact_github 1.svg';

  /// File path: assets/svg/contact_mail 1.svg
  String get contactMail1 => 'assets/svg/contact_mail 1.svg';

  /// File path: assets/svg/ic_round-apple.svg
  String get icRoundApple => 'assets/svg/ic_round-apple.svg';

  /// File path: assets/svg/ic_sharp-android.svg
  String get icSharpAndroid => 'assets/svg/ic_sharp-android.svg';

  /// File path: assets/svg/mdi_git.svg
  String get mdiGit => 'assets/svg/mdi_git.svg';

  /// File path: assets/svg/simple-icons_flutter.svg
  String get simpleIconsFlutter => 'assets/svg/simple-icons_flutter.svg';

  /// List of all assets
  List<String> get values => [
        flutterCode,
        icon,
        libertyPayLogo21,
        logoInt,
        akarIconsFigmaFill,
        bxlFlutter,
        contactGithub1,
        contactMail1,
        icRoundApple,
        icSharpAndroid,
        mdiGit,
        simpleIconsFlutter
      ];
}

class Assets {
  Assets._();

  static const $AssetsPngGen png = $AssetsPngGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
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
