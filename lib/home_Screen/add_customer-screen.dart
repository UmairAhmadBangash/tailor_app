import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_project/Components/Tabbarview/tab1.dart';
import 'package:tailor_project/Components/Tabbarview/tab2.dart';
import 'bottom_navigation_bar_screen.dart';
import 'home1.dart';

class AddCustomerScreen extends StatefulWidget {
  const AddCustomerScreen({Key? key}) : super(key: key);

  @override
  State<AddCustomerScreen> createState() => _AddCustomerScreenState();
}

class _AddCustomerScreenState extends State<AddCustomerScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
           SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const BottomNavigationBarScreen()));
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_sharp,size: 20,),),
                 SizedBox(
                  width: 40.w,
                ),
                Text(
                  "Add Customer Record",
                  style: GoogleFonts.openSans(
                      fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
           SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 67,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffF9FAFB),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: TabBar(
                          labelColor: const Color(0xff00BFE2),
                          unselectedLabelColor: const Color(0xff8F8996),
                          controller: tabController,
                          indicatorColor: Colors.grey.shade200,
                          indicatorWeight: 15,
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          tabs: [
                            Tab(
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 18, right: 10),
                                  child: Text(
                                    "Measurement",
                                    style: GoogleFonts.mulish(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.sp),
                                  ),
                                ),
                              ),
                            ),
                            Tab(
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 18, left: 10),
                                  child: Text(
                                    "Custom Form",
                                    style: GoogleFonts.mulish(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.sp),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: TabBarView(controller: tabController, children: const [
              Tab1(),
              Tab2(),
            ]),
          ),
        ],
      ),
    ));
  }
}
