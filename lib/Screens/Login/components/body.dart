import 'dart:developer';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '/Screens/Login/components/background.dart';
import '/Screens/Signup/signup_screen.dart';
import '/components/already_have_an_account_acheck.dart';
import '/components/rounded_button.dart';
import '/components/rounded_input_field.dart';
import '/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import '/UserDashBoard/userdashboard.dart';
import '/models/userlogin.dart';
import '/models/loginuser.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  Future<http.Response> userlogin(String mobile_no, String password) {
    final jsondata =
        LoginUser(mobileNo: mobile_no, password: password).toJson();
    return http.post(Uri.parse('http://care-engg.com/api/login'),
        body: jsondata);
  }

  Future<int> verifylogin(String mobile_no, String password) async {
    http.Response response = await userlogin(mobile_no, password);
    var decodeddata = jsonDecode(response.body);
    var user_data = UserLogin.fromJson(decodeddata);

    if (user_data.status == 1) {
      return 1;
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var verify;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              controller: emailcontroller,
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              hinttext: "Password",
              controller: passwordcontroller,
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                setState(() {
                  print("object");
                  verify = verifylogin(
                      emailcontroller.text, passwordcontroller.text);
                  print(verify);
                });
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return UserDashBoard();
                //     },
                //   ),
                // );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// class Body extends StatelessWidget {
//   const Body({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Background(
//       child: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               "LOGIN",
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: size.height * 0.03),
//             SvgPicture.asset(
//               "assets/icons/login.svg",
//               height: size.height * 0.35,
//             ),
//             SizedBox(height: size.height * 0.03),
//             RoundedInputField(
//               hintText: "Your Email",
//               onChanged: (value) {},
//             ),
//             RoundedPasswordField(
//               onChanged: (value) {},
//             ),
//             RoundedButton(
//               text: "LOGIN",
//               press: () {},
//             ),
//             SizedBox(height: size.height * 0.03),
//             AlreadyHaveAnAccountCheck(
//               press: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) {
//                       return SignUpScreen();
//                     },
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
