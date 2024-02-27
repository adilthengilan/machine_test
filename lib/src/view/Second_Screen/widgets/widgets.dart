import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test/src/const/sizedBox.dart';
import 'package:machine_test/src/const/style.dart';

Widget buttons(height, width) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 60),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: 100,
          child: Center(
            child: Text(
              'ABOUT',
              style: buttonStyle,
            ),
          ),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(25)),
        ),
        Container(
          height: 40,
          width: 100,
          child: Center(
            child: Text(
              'REVIEW',
              style: GoogleFonts.poppins(
                  color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(25)),
        )
      ],
    ),
  );
}
