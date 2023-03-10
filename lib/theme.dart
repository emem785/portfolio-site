import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_site/color_pallete.dart';

class PortfolioTheme {
  PortfolioTheme._();

  static final instance = PortfolioTheme._();

  ThemeData get theme {
    return FlexColorScheme.light(colors: scheme)
        .toTheme
        .copyWith(scaffoldBackgroundColor: ColorPalette.backgroundColor)
        .copyWith(appBarTheme: appBarTheme)
        .copyWith(elevatedButtonTheme: elevatedButtonTheme)
        .copyWith(textTheme: textTheme);
  }

  FlexSchemeColor get scheme {
    return const FlexSchemeColor(
      primary: ColorPalette.primaryColor,
      secondary: ColorPalette.secondaryColor,
    );
  }

  TextTheme get textTheme {
    return GoogleFonts.inconsolataTextTheme()
        .apply(
          bodyColor: ColorPalette.secondaryColor,
          displayColor: ColorPalette.secondaryColor,
        )
        .copyWith(
          bodyText2: GoogleFonts.inconsolata(
            fontSize: 20,
            color: ColorPalette.secondaryColor,
          ),
          button: GoogleFonts.inconsolata(
            fontSize: 18,
            color: ColorPalette.secondaryColor,
          ),
          headline2: GoogleFonts.inconsolata(fontSize: 32),
          headline1: GoogleFonts.inconsolata(
            color: ColorPalette.primaryColor,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
          headline3: GoogleFonts.inconsolata(
            color: ColorPalette.primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        );
  }

  AppBarTheme get appBarTheme {
    return AppBarTheme(
      backgroundColor: ColorPalette.backgroundColor,
      elevation: 0,
      iconTheme: const IconThemeData(color: ColorPalette.primaryColor),
      actionsIconTheme: const IconThemeData(color: ColorPalette.primaryColor),
      toolbarTextStyle: GoogleFonts.inconsolata(
        color: ColorPalette.secondaryColor,
        backgroundColor: ColorPalette.secondaryColor,
      ),
      titleTextStyle: GoogleFonts.inconsolata(
        color: ColorPalette.secondaryColor,
        backgroundColor: ColorPalette.secondaryColor,
      ),
    );
  }

  ElevatedButtonThemeData get elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: ColorPalette.secondaryColor,
      ),
    );
  }
}
