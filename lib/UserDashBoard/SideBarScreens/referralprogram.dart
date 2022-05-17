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
        Container(
          height: size.height * 0.03,
          alignment: Alignment.center,
          child: Text("Referral 1"),
        ),
        Container(
          child: Column(children: [
            RoundedInputField(
              hintText: "Referral 1 name",
            ),
            Container(
              height: size.height * 0.01,
            ),
            RoundedInputField(
              hintText: "Referral 1 phone",
            ),
          ]),
        ),
        Container(
          height: size.height * 0.03,
          alignment: Alignment.center,
          child: Text("Referral 2"),
        ),
        Container(
          child: Column(children: [
            RoundedInputField(
              hintText: "Referral 2 name",
            ),
            Container(
              height: size.height * 0.01,
            ),
            RoundedInputField(
              hintText: "Referral 2 phone",
            ),
          ]),
        ),
        Container(
          height: size.height * 0.03,
          alignment: Alignment.center,
          child: Text("Referral 3"),
        ),
        Container(
          child: Column(children: [
            RoundedInputField(
              hintText: "Referral 3 name",
            ),
            Container(
              height: size.height * 0.01,
            ),
            RoundedInputField(
              hintText: "Referral 3 phone",
            ),
          ]),
        ),
        Container(
          height: size.height * 0.05,
        ),
        Container(
          child: RoundedButton(
            text: "Refer",
            press: () => {},
          ),
        ),
      ]),
    );
  }
}
