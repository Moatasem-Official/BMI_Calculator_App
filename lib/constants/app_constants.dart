import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kBackgroundColor = Color(0xFF0A0E21);
const Color kActiveCardColor = Color(0xFF1D1E33);
const Color kInactiveCardColor = Color(0xFF111328);
const Color kBottomContainerColor = Color(0xFFEB1555);
const Color kResultTextColor = Color(0xFF24D876);
const Color kOverlayColor = Color(0x29EB1555);

const double kBottomContainerHeight = 80.0;

final TextStyle kTitleTextStyle = GoogleFonts.montserrat(
  fontSize: 35.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

final TextStyle kResultTextStyle = GoogleFonts.montserrat(
  color: kResultTextColor,
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

final TextStyle kBmiTextStyle = GoogleFonts.montserrat(
  fontSize: 80.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

final TextStyle kInterpretationTextStyle = GoogleFonts.montserrat(
  fontSize: 18.0,
  color: Colors.white,
);

final TextStyle kLargeButtonTextStyle = GoogleFonts.montserrat(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

final TextStyle kInfoLabelStyle = GoogleFonts.montserrat(
  fontSize: 14.0,
  color: Colors.white54,
);

final TextStyle kInfoValueStyle = GoogleFonts.montserrat(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

const kLabelTextStyle = TextStyle(fontSize: 18.0, color: Color(0xFFffffff));
const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
  color: Colors.white,
);

// متغير لتحديد الجنس المختار
enum Gender { male, female }