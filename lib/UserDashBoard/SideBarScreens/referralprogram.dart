import 'package:flutter/material.dart';
import '/components/rounded_input_field.dart';
import '/components/rounded_button.dart';

class ReferProgram extends StatelessWidget {
  const ReferProgram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        Container(
          height: size.height * 0.15,
          alignment: Alignment.center,
          child: Text("My Referrals"),
        ),
      ]),
    );
  }
}
