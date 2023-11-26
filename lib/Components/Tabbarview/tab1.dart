import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../home_Screen/home1.dart';
import '../../re-use-radio-component.dart';
import '../containerbutton.dart';
import '../short-textformfeild.dart';
import '../textfeild.dart';

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  "Searle Number”  ",
                  style: GoogleFonts.openSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff00BFE2)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  "8452",
                  style: GoogleFonts.openSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 27.w,
            ),
            Text(
              "Customer",
              style: GoogleFonts.openSans(
                  fontSize: 18.sp, fontWeight: FontWeight.w600),
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        UseTextFormFeild(
          controller: _controller,
          fillcolor: const Color(0xffF9FAFB),
          hintText: "Name",
          prefixicons: Padding(
            padding: const EdgeInsets.all(13),
            child: Image.asset(
              "images/email-logo.png",
              width: 14.w,
              height: 12.h,
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        UseTextFormFeild(
          controller: _controller,
          fillcolor: const Color(0xffF9FAFB),
          hintText: "Contact Number",
          prefixicons: Padding(
            padding: const EdgeInsets.all(14),
            child: Image.asset(
              "images/call-logo.png",
              width: 10.w,
              height: 14.h,
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Text(
                "Measurement",
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600, fontSize: 18.sp),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        ShortTextFormFeild(
          texttype1: TextInputType.number,
          hinttext1: 'Kameez Lambai',
          texttype2: TextInputType.number,
          hinttext2: 'Bazo',
        ),
        SizedBox(
          height: 15.h,
        ),
        ShortTextFormFeild(
          texttype1: TextInputType.number,
          hinttext1: 'Tera',
          texttype2: TextInputType.number,
          hinttext2: 'Gala',
        ),
        SizedBox(
          height: 15.h,
        ),
        ShortTextFormFeild(
          texttype1: TextInputType.number,
          hinttext1: 'Chati',
          texttype2: TextInputType.number,
          hinttext2: 'Gera',
        ),
        SizedBox(
          height: 15.h,
        ),
        ShortTextFormFeild(
          texttype1: TextInputType.number,
          hinttext1: 'Shalwar Lambai',
          texttype2: TextInputType.number,
          hinttext2: 'Pancha',
        ),
        SizedBox(
          height: 15.h,
        ),
        SizedBox(
            height: 70.h,
            child: ReUseRadioBotton(
              text1: '2 Piece Kolor',
              text2: 'Shirwani Gala',
            )),
        SizedBox(
          height: 15.h,
        ),
        SizedBox(
            height: 70.h,
            child: ReUseRadioBotton(
              text1: 'Single Salai',
              text2: 'Double Salai',
            )),
        SizedBox(
          height: 15.h,
        ),
        SizedBox(
            height: 70.h,
            child: ReUseRadioBotton(
              text1: 'Fit Kaff',
              text2: 'Plate Kaff',
            )),
        SizedBox(
          height: 15.h,
        ),
        SizedBox(
            height: 70.h,
            child: ReUseRadioBotton(
              text1: 'Choras Gera',
              text2: 'Gol Gera',
            )),
        SizedBox(
          height: 15.h,
        ),
        SizedBox(
            height: 70.h,
            child: ReUseRadioBotton(
              text1: 'Gol Bazo',
              text2: 'Kaff Gol',
            )),
        SizedBox(
          height: 15.h,
        ),
        SizedBox(
            height: 70.h,
            child: ReUseRadioBotton(
              text1: 'Kaj',
              text2: 'Tanka Pati',
            )),
        SizedBox(
          height: 40.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: TextFormField(
            maxLines: 8,
            decoration: InputDecoration(
              iconColor: Colors.grey,
              hintText: "Write Note",
              hintStyle: GoogleFonts.openSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: const Color(0xff8F8996)),
              prefixIcon: const Padding(
                padding: EdgeInsets.only(bottom: 145, left: 20),
                child: ImageIcon(
                  AssetImage("images/note.png"),
                  size: 30,
                  color: Colors.grey,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
                borderSide: BorderSide.none,
              ),
              fillColor: const Color(0xffF9FAFB),
              filled: true,
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        ContainerButton(
          ontap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen1()));
          },
          text: "Submit",
        ),
        SizedBox(
          height: 40.h,
        ),
      ]),
    );
  }
}
