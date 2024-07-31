import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_card/utils/color_constants.dart';

class MytextStyle {
  static TextStyle buttonStyle = GoogleFonts.acme(
      textStyle: TextStyle(fontSize: 20, color: ColorConstants.customWhite));

  static TextStyle hintStyle = GoogleFonts.titilliumWeb(
      textStyle: TextStyle(fontSize: 18, color: ColorConstants.customGrey));

  static TextStyle normalText = GoogleFonts.poppins(
      textStyle: TextStyle(fontSize: 15, color: ColorConstants.customBlack));

  static TextStyle normalText1 = GoogleFonts.poppins(
      textStyle: TextStyle(fontSize: 15, color: ColorConstants.customRed),
      fontWeight: FontWeight.bold);
}
