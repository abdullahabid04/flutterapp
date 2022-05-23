import 'package:flutter/material.dart';
import '/UserDashBoard/userdashboard.dart';
import '/api_services/verification_api.dart';
import '/models/accountverification_models/verification_request.dart';
import '/models/accountverification_models/verification_response.dart';

class VerifyAccount extends StatefulWidget {
  final String? mobileNo;
  const VerifyAccount({Key? key, this.mobileNo}) : super(key: key);

  @override
  State<VerifyAccount> createState() => _VerifyAccountState();
}

class _VerifyAccountState extends State<VerifyAccount> {
  late VerificationRequest verificationRequest;
  late VerificationResponse verificationResponse;

  @override
  void initState() {
    super.initState();
    verificationRequest = VerificationRequest();
    verificationResponse = VerificationResponse();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final verifycontroller = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: const Text("Verify Account"),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                height: size.height * 0.1,
              ),
              Text("Enter verification code"),
              Container(
                height: size.height * 0.1,
              ),
              Container(
                width: size.width * 0.3,
                child: Container(
                  width: size.width * 0.3,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: verifycontroller,
                  ),
                ),
              ),
              Container(
                height: size.height * 0.1,
              ),
              ElevatedButton(
                  onPressed: () {
                    verificationRequest.mobileNo = widget.mobileNo;
                    verificationRequest.verificationCode =
                        verifycontroller.text;
                    APIService apiService = APIService();
                    apiService.login(verificationRequest).then((value) {
                      if (value != null) {
                        if (value.status == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return UserDashBoard();
                              },
                            ),
                          );
                        } else {}
                      }
                    });
                  },
                  child: Text("verify")),
            ],
          ),
        ));
  }
}

// class VerifyAccount extends StatelessWidget {
//   const VerifyAccount({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     final verifycontroller = TextEditingController();
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Verify Account"),
//           centerTitle: true,
//         ),
//         body: Container(
//           child: Column(
//             children: [
//               Container(
//                 height: size.height * 0.1,
//               ),
//               Text("Enter verification code"),
//               Container(
//                 height: size.height * 0.1,
//               ),
//               Container(
//                 width: size.width * 0.3,
//                 child: Container(
//                   width: size.width * 0.3,
//                   child: TextField(
//                     keyboardType: TextInputType.number,
//                     controller: verifycontroller,
//                   ),
//                 ),
//               ),
//               Container(
//                 height: size.height * 0.1,
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     APIService apiService = APIService();
//                     apiService.login(loginRequest).then((value) {});
//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute(
//                     //     builder: (context) {
//                     //       return UserDashBoard();
//                     //     },
//                     //   ),
//                     // );
//                   },
//                   child: Text("verify")),
//             ],
//           ),
//         ));
//   }
// }
