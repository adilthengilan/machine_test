import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

Widget Search_Bar(double height) {
  return Container(
    child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 10, bottom: 5),
            hintText: 'Search here',
            hintStyle: GoogleFonts.poppins(),
            border: UnderlineInputBorder(borderSide: BorderSide.none))),
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 5,
              color: Color.fromARGB(255, 205, 205, 205),
              blurStyle: BlurStyle.outer,
              spreadRadius: 5)
        ],
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.only(left: 20, top: 15, right: 20),
    height: height * 0.05,
  );
}
