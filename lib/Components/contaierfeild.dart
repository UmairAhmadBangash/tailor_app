import 'package:flutter/material.dart';
import 'package:tailor_project/Components/textfeild.dart';

class ContainerField extends StatelessWidget {

  const ContainerField({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return SizedBox(
      height: 55,
      child: Row(
        children: [
          SizedBox(
            width: 200,
            child: UseTextFormFeild(
              controller:_controller,
              hintText: "Kameez Lambai",
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 210,
                child: UseTextFormFeild(
                  controller: _controller,
                  hintText: "Bazo",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
