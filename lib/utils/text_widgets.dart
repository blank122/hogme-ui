import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

Widget text50BoldHeading(
    {required String text, Color defaultColor = Colors.black}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: GoogleFonts.poppins(
      fontSize: 50,
      color: defaultColor,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.5,
    ),
  );
}

Widget text36Normal({required String text, Color defaultColor = Colors.black}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: GoogleFonts.montserrat(
      fontSize: 36,
      color: defaultColor,
      letterSpacing: 1.2,
    ),
  );
}

Widget text36Bold({required String text, Color defaultColor = Colors.black}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: GoogleFonts.montserrat(
      fontSize: 36,
      color: defaultColor,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.2,
    ),
  );
}

Widget text24Bold({required String text, Color defaultColor = Colors.black}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: GoogleFonts.montserrat(
      fontSize: 24,
      color: defaultColor,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.2,
    ),
  );
}

Widget text24Normal({required String text, Color defaultColor = Colors.black}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: GoogleFonts.montserrat(
      fontSize: 24,
      color: defaultColor,
      letterSpacing: 1.2,
    ),
  );
}

Widget text16Bold({required String text, Color defaultColor = Colors.black}) {
  return Text(
    text,
    textAlign: TextAlign.left,
    style: GoogleFonts.montserrat(
      fontSize: 16,
      color: defaultColor,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.2,
    ),
  );
}

Widget text20Normal({required String text, Color defaultColor = Colors.black}) {
  return Text(
    text,
    textAlign: TextAlign.left,
    style: GoogleFonts.montserrat(
      fontSize: 20,
      color: defaultColor,
      letterSpacing: 1.2,
    ),
  );
}

Widget text16Normal({required String text, Color defaultColor = Colors.black}) {
  return Text(
    text,
    textAlign: TextAlign.left,
    style: GoogleFonts.montserrat(
      fontSize: 16,
      color: defaultColor,
      letterSpacing: 1.2,
    ),
  );
}

Widget text14Normal({required String text}) {
  return Text(
    text,
    textAlign: TextAlign.left,
    style: GoogleFonts.montserrat(
      fontSize: 14,
      color: Colors.black,
      fontWeight: FontWeight.normal,
      letterSpacing: 1.2,
    ),
  );
}

Widget textUnderline(
    {required String text, Color defaultColor = Colors.black}) {
  return GestureDetector(
      onTap: () => {},
      child: Text(
        text,
        style: GoogleFonts.montserrat(
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.normal,
          letterSpacing: 1.2,
          decoration: TextDecoration.underline,
        ),
      ));
}
