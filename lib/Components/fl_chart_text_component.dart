import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReUseTextChart extends StatelessWidget {
  String text;

  ReUseTextChart({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(color: const Color(0xff7B6F72), fontSize: 13),
    );
  }
}
