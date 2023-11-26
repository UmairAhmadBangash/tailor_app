import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tailor_project/Components/containerbutton.dart';
import 'package:tailor_project/home_Screen/home1.dart';
import 'package:tailor_project/login_screen.dart';

import 'Components/textfeild.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({super.key});

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final picker = ImagePicker();
  File? _image;
  TextEditingController _controller = TextEditingController();

  Future getImager() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Center(
                  child: Text(
                "Create Profile",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
              )),
              SizedBox(
                height: 40.h,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xffF9FAFB),
                      borderRadius: BorderRadius.circular(15),
                      image: _image == null
                          ? null
                          : DecorationImage(
                              image: FileImage(_image!), fit: BoxFit.cover)),
                  child: _image == null
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                getImager();
                              },
                              icon: Icon(
                                Icons.camera_alt_rounded,
                                weight: 19.w,
                                color: Color(0xff00BFE2),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Add images",
                                style: TextStyle(
                                    color: Color(0xff8F8996), fontSize: 14.sp),
                              ),
                            ),
                          ],
                        )
                      : const SizedBox()),
              SizedBox(
                height: 50.h,
              ),
              UseTextFormFeild(
                controller: _controller,
                hintText: "Name",
                fillcolor: const Color(0xffF9FAFB),
                prefixicons: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Image.asset(
                    "images/email-profile.png",
                    scale: 3,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              UseTextFormFeild(
                controller: _controller,
                fillcolor: const Color(0xffF9FAFB),
                hintText: "Shop Address",
                prefixicons: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Image.asset(
                    "images/shop.png",
                    scale: 3,
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
                    "images/call.png",
                    scale: 3,
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              ContainerButton(
                text: "Create Account",
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen1()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
