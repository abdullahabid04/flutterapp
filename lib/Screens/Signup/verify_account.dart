import 'package:flutter/material.dart';
import '/UserDashBoard/userdashboard.dart';

class VerifyAccount extends StatelessWidget {
  const VerifyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                  child: TextField(),
                ),
              ),
              Container(
                height: size.height * 0.1,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return UserDashBoard();
                        },
                      ),
                    );
                  },
                  child: Text("verify")),
            ],
          ),
        ));
  }
}
