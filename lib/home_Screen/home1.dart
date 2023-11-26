import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tailor_project/Components/containerbutton.dart';
import 'package:tailor_project/Components/homescreen-text.dart';
import '../Components/oder-details-container.dart';
import '../Components/pic_continer.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import '../Components/profile_row_component.dart';
import '../payment_details.dart';
import 'add_customer-screen.dart';
import 'bottom_navigation_bar_screen.dart';
import 'customer-search.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  Color mainColor = const Color(0xFF00BFE2);
  final PageController _pageController = PageController(initialPage: 0);
  final List<String> imageList = [
    "images/background-banner.png",
    "images/background-baner2.png",
    "images/background-banner.png",
  ];
 bool isSelected =false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            const ProfileRowReUse(),
            SizedBox(
              height: 200.h,
              width: double.infinity,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                itemCount: imageList.length,
                itemBuilder: (_, index) => Container(
                  height: 300,
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(imageList[index]),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: CustomizableEffect(
                activeDotDecoration:  DotDecoration(
                    height: 6.16.h,
                    color: Color(0xff00BFE2),
                    width: 20.35.w,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                dotDecoration: DotDecoration(
                  height: 7.h,
                  width: 7.w,
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  dotBorder: DotBorder(
                    color: const Color(0xff00BFE2),
                    width: 1.w,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20),
                  child: Text(
                    "Explore",
                    style: GoogleFonts.openSans(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff000000)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      PicContiner(
                        image: "images/add-customer-logo.png",
                        colors1: const Color(0xff00BFE2),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const AddCustomerScreen()));
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: PicContiner(
                          image: "images/View-customer-logo.png",
                          colors1: Colors.white,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CustomerSearch()));
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      PicContiner(
                        image: "images/paymentlogo.png",
                        colors1: Colors.white,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PaymentDetailsScreen()));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            TextUse(
              text1: 'Add Customer',
              text2: 'View Customer',
              text3: 'Payment',
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 16.w,
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child:Text(
                  "Ongoing Orders",
                  style: GoogleFonts.openSans(
                      fontSize: 16.sp, fontWeight: FontWeight.w600),
                )
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            isSelected == true ? Column(
              children: [
                const OrderDetailsConatiner(),
                SizedBox(
                  height: 20.h,
                ),
                const OrderDetailsConatiner(),
              ],
            ) : Image.asset("images/empty-box-logo.png",width: 232.w,height: 202.h,),
          ],
        ),
      )),
    );
  }
}
