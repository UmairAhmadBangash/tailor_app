import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_project/Components/short-textformfeild.dart';
import 'package:tailor_project/home_Screen/add_customer-screen.dart';
import '../Components/containerbutton.dart';
import '../Components/measurement-diolog-box.dart';
import '../Components/textfeild.dart';
import '../re-use-radio-component.dart';
import 'home1.dart';

class MeasurementDetailScreen extends StatefulWidget {
  const MeasurementDetailScreen({super.key});

  @override
  State<MeasurementDetailScreen> createState() =>
      _MeasurementDetailScreenState();
}

class _MeasurementDetailScreenState extends State<MeasurementDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5.w,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen1()));
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        size: 20,
                      )),
                  SizedBox(
                    width: 35.w,
                  ),
                  Center(
                    child: Text(
                      "Measurement Detail",
                      style: GoogleFonts.openSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 45.w,
                  ),
                  ImageIcon(
                    const AssetImage("images/logout.png"),
                    color: Colors.grey.shade500,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff00BFE2),
                      Color(0xff008FC9),
                    ],
                  ),
                  image: const DecorationImage(
                    image: AssetImage("images/profile.png"),
                  ),
                  border: Border.all(color: const Color(0xffD4CECE), width: 3),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Kristin Watson",
                style: GoogleFonts.openSans(
                    fontSize: 16.sp,
                    color: const Color(0xff747474),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "Serial Number# 3456",
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff747474),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Measurement",
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600, fontSize: 16.sp),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                        "images/delet-icon.png",
                        height: 20,
                        width: 20,
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AddCustomerScreen()));
                      },
                      child: Image.asset(
                        "images/write-icon.png",
                        height: 25,
                        width: 25,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              ShortTextFormFeild(
                enabled1: false,
                hinttext1: "Kameez Lambai",
                texttype1: TextInputType.emailAddress,
                suffixtext1: "5",
                enabled2: false,
                hinttext2: "Bazo",
                suffixtext2: "7",
                texttype2: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 15.h,
              ),
              ShortTextFormFeild(
                enabled1: false,
                texttype1: TextInputType.emailAddress,
                hinttext1: "Tera",
                suffixtext1: "5",
                enabled2: false,
                hinttext2: "Gala",
                texttype2: TextInputType.emailAddress,
                suffixtext2: "7",
              ),
              SizedBox(
                height: 15.h,
              ),
              ShortTextFormFeild(
                enabled1: false,
                texttype1: TextInputType.emailAddress,
                hinttext1: "Chati",
                suffixtext1: "5",
                enabled2: false,
                texttype2: TextInputType.emailAddress,
                hinttext2: "Gera",
                suffixtext2: "7",
              ),
              SizedBox(
                height: 15.h,
              ),
              ShortTextFormFeild(
                enabled1: false,
                texttype1: TextInputType.emailAddress,
                hinttext1: "Shalwar LAmbai  ",
                suffixtext1: "5",
                enabled2: false,
                texttype2: TextInputType.emailAddress,
                hinttext2: "Pancha",
                suffixtext2: "7",
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                  height: 70.h,
                  child: ReUseRadioBotton(
                    text1: '2 Piece Kolor',
                    text2: 'Shirwani Gala',
                  )),
              SizedBox(
                height: 25.h,
              ),
              Container(
                  height: 70.h,
                  child: ReUseRadioBotton(
                    text1: 'Single Salai',
                    text2: 'Double Salai',
                  )),
              SizedBox(
                height: 25.h,
              ),
              Container(
                  height: 70.h,
                  child: ReUseRadioBotton(
                    text1: 'Fit Kaff',
                    text2: 'Plate Kaff',
                  )),
              SizedBox(
                height: 25.h,
              ),
              Container(
                  height: 70.h,
                  child: ReUseRadioBotton(
                    text1: 'Choras Gera',
                    text2: 'Gol Gera',
                  )),
              SizedBox(
                height: 25.h,
              ),
              Container(
                  height: 70.h,
                  child: ReUseRadioBotton(
                    text1: 'Gol Bazo',
                    text2: 'Kaff Gol',
                  )),
              SizedBox(
                height: 25.h,
              ),
              Container(
                  height: 70.h,
                  child: ReUseRadioBotton(
                    text1: 'Kaj',
                    text2: 'Tanka Pati',
                  )),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  maxLines: 8,
                  decoration: InputDecoration(
                    hintText: "Write Note",
                    hintStyle: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: const Color(0xff757575)),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(bottom: 144, left: 20),
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
                text: "Start Order",
                ontap: () {
                  showDialog(
                      useSafeArea: false,
                      context: context,
                      builder: (BuildContext contect) {
                        return const MeasurementDiologBox();
                      });
                },
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}
