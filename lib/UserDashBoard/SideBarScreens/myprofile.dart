import 'dart:developer';

import 'package:flutter/material.dart';
import '/components/rounded_input_field.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      child: Column(children: [
        Container(
          alignment: Alignment.center,
          height: size.height * 0.13,
          child: Text("My Profile"),
        ),
        Container(
          child: RoundedInputField(hintText: "First Name"),
        ),
        Container(
          child: RoundedInputField(hintText: "last Name"),
        ),
        Container(
          child: RoundedInputField(hintText: "Mobile Phone No."),
        ),
        Container(
          child: RoundedInputField(hintText: "E-mail"),
        ),
        Container(
          height: size.height * 0.05,
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Row(children: [
            Expanded(child: Container()),
            GestureDetector(
              onTap: () => {},
              child: Text(
                "Reset Password",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: size.width * 0.1,
            ),
            ElevatedButton(
              onPressed: () => {},
              child: Text("Save Changes"),
            ),
            Container(
              width: size.width * 0.1,
            ),
          ]),
        ),
      ]),
    );
  }
}
