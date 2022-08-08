import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color colorActive = const Color(0xff464646);
Color colorUnActive = const Color(0xff97ADB6);
Color textColorRegular = const Color(0xff989898);
Color textColorLight = const Color(0xff9B9B9B);
Color textColorBold = const Color(0xff212121);
Color buttonColor = const Color(0xff656565);
Color bgColor = const Color(0xff68AE7B);
Color textColorGray = const Color(0xffABB4BD);

double margin16 = 16;

TextStyle regularStyle =
    GoogleFonts.poppins(color: textColorRegular, fontWeight: FontWeight.normal);

TextStyle lightStyle =
    GoogleFonts.poppins(color: textColorRegular, fontWeight: FontWeight.w300);

TextStyle textGreen =
    GoogleFonts.poppins(color: bgColor, fontWeight: FontWeight.w500);

TextStyle textGray =
    GoogleFonts.poppins(color: textColorGray, fontWeight: FontWeight.w500);

TextStyle regularWhite =
    GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.normal);

TextStyle boldHeader = GoogleFonts.poppins(
    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 36);

TextStyle boldStyle = GoogleFonts.poppins(
    color: textColorBold, fontWeight: FontWeight.bold, fontSize: 32);
