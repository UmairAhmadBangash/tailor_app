import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UseTextFormFeild extends StatefulWidget {
  String? hintText;
  Color? fillcolor;
  Widget? prefixicons;
  Icon? sufixicons;
  String? images;
  TextEditingController? controller;
  bool? obsecure;
  VoidCallback? onTap;
  Widget? iconsbutton;
  bool? isSuffix;
  TextInputType? texttype;

  UseTextFormFeild({
    super.key,
    this.isSuffix = false,
    this.texttype,
    this.hintText,
    this.fillcolor,
    this.controller,
    this.prefixicons,
    this.sufixicons,
    this.images,
    this.obsecure,
    this.onTap,
    this.iconsbutton,
  });

  @override
  State<UseTextFormFeild> createState() => _UseTextFormFeildState();
}

class _UseTextFormFeildState extends State<UseTextFormFeild> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 23),
      child: Container(
        child: TextFormField(
          obscureText: widget.obsecure ?? false,
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: GoogleFonts.openSans(
                fontSize: 14.sp,
                color: const Color(0xff8F8996),
                fontWeight: FontWeight.w400),
            filled: true,
            fillColor: widget.fillcolor,
            prefixIcon: widget.prefixicons,
            suffixIcon: widget.isSuffix == true
                ? InkWell(
                    onTap: () {
                      setState(() {
                        widget.obsecure = !widget.obsecure!;
                      });
                    },
                    child: Padding(
                      padding:  EdgeInsets.only(right: 24),
                      child: Image.asset(
                        widget.obsecure!
                            ? "images/visable-eye.png"
                            : "images/hide-eye.png",
                        color: Colors.grey,
                        height: 24.h,
                        width: 24.w,
                      ),
                    ),
                  )
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(
                vertical: 25.h,
             ),
          ),
        ),
      ),
    );
  }
}
