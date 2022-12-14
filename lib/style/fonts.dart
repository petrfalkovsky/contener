import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'colors.dart' as colors;

class Fonts {
  static const titleLarge =
      TextStyle(fontSize: 26, fontWeight: FontWeight.w500, height: 1.15);
}

const headlineLarge =
    TextStyle(fontSize: 26, fontWeight: FontWeight.w500, height: 1.15);

final headlineMedium1 = GoogleFonts.spaceGrotesk(
    textStyle: const TextStyle(
        color: colors.black, fontSize: 18, fontWeight: FontWeight.w800));

final headlineMedium2 = GoogleFonts.spaceGrotesk(
    textStyle: const TextStyle(
        color: colors.black, fontSize: 18, fontWeight: FontWeight.w700));

final headlineMedium3 = GoogleFonts.spaceGrotesk(
    textStyle: const TextStyle(
        color: colors.black, fontSize: 18, fontWeight: FontWeight.w400));

const headlineSmall =
    TextStyle(fontSize: 22, fontWeight: FontWeight.w500, height: 1.36);

const titleH1 =
    TextStyle(fontSize: 26, fontWeight: FontWeight.w500, height: 1.15);

final titleH2 = GoogleFonts.jetBrainsMono(
    textStyle: const TextStyle(
        color: colors.black, fontSize: 24, fontWeight: FontWeight.w700));

const titleH3 =
    TextStyle(fontSize: 22, fontWeight: FontWeight.w500, height: 1.36);

final titleH4 = GoogleFonts.openSans(
    textStyle: const TextStyle(
  color: colors.black,
  fontSize: 16,
  fontWeight: FontWeight.w600,
  decoration: TextDecoration.underline,
));

final titlefutureH8H4 = GoogleFonts.spaceGrotesk(
    textStyle: const TextStyle(
  color: colors.black,
  fontSize: 16,
  fontWeight: FontWeight.w800,
));

const bodyLarge =
    TextStyle(fontSize: 26, fontWeight: FontWeight.w500, height: 1.15);
const bodyMedium =
    TextStyle(fontSize: 22, fontWeight: FontWeight.w900, height: 1.36);
const bodySmall =
    TextStyle(fontSize: 22, fontWeight: FontWeight.w500, height: 1.36);
const bodySuperSmall =
    TextStyle(fontSize: 14, fontWeight: FontWeight.w400, height: 1.36);
final bodySuperSmall2 = GoogleFonts.openSans(
    textStyle: const TextStyle(
        color: colors.black, fontSize: 14, fontWeight: FontWeight.w400));

const labelLarge =
    TextStyle(fontSize: 26, fontWeight: FontWeight.w500, height: 1.15);
const labelMedium =
    TextStyle(fontSize: 22, fontWeight: FontWeight.w900, height: 1.36);
const labelSmall =
    TextStyle(fontSize: 22, fontWeight: FontWeight.w900, height: 1.36);

final footerLarge = GoogleFonts.jetBrainsMono(
    textStyle: const TextStyle(
        color: colors.black, fontSize: 25, fontWeight: FontWeight.w700));

final appBar = GoogleFonts.jetBrainsMono(
    textStyle: const TextStyle(
        color: colors.black, fontSize: 20, fontWeight: FontWeight.w400));

final footerMedium = GoogleFonts.jetBrainsMono(
    textStyle: const TextStyle(
        color: colors.black, fontSize: 18, fontWeight: FontWeight.w400));

final proposalsViewSettingsActive = GoogleFonts.manrope(
    textStyle: const TextStyle(
        color: colors.white, fontSize: 16, fontWeight: FontWeight.w400));
final proposalsViewSettingsInactive = GoogleFonts.manrope(
    textStyle: const TextStyle(
        color: colors.blue, fontSize: 16, fontWeight: FontWeight.w400));

// Edit Profile Screen
final inactiveGreyEditProfile = GoogleFonts.manrope(
    textStyle: const TextStyle(
        color: colors.gray01, fontSize: 14, fontWeight: FontWeight.w400));

final activeBlackEditProfile = GoogleFonts.manrope(
    textStyle: const TextStyle(
        color: colors.black, fontSize: 14, fontWeight: FontWeight.w600));

final secondaryButtonText = GoogleFonts.openSans(
    textStyle: const TextStyle(
        color: colors.white, fontSize: 14, fontWeight: FontWeight.w600));

final hintTextFieldEditProfile = GoogleFonts.manrope(
    textStyle: const TextStyle(
        color: colors.black, fontSize: 16, fontWeight: FontWeight.w400));
