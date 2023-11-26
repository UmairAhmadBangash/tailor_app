import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReUseTextFormFeild extends StatefulWidget {
  final Color fillcolor;
  final String hintText;
  final Widget prefixicons;

  ReUseTextFormFeild({
    required this.fillcolor,
    required this.hintText,
    required this.prefixicons,
  });

  @override
  _ReUseTextFormFeildState createState() => _ReUseTextFormFeildState();
}

class _ReUseTextFormFeildState extends State<ReUseTextFormFeild> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: widget.fillcolor,
      ),
      child: TextFormField(
        controller: _controller,
        decoration: InputDecoration(
          prefixIcon: widget.prefixicons,
          hintText: widget.hintText,
          hintStyle: GoogleFonts.openSans(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: const Color(0xff8F8996),
          ),
          fillColor: widget.fillcolor,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
