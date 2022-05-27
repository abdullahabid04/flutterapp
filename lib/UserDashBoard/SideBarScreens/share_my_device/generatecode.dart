import 'package:flutter/material.dart';
import '/components/rounded_input_field.dart';
import '/components/rounded_button.dart';

class GenerateCode extends StatelessWidget {
  const GenerateCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Generate Code'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => {Navigator.of(context).pop()},
        ),
      ),
      body: Column(
        children: [
          Container(
            height: size.height * 0.1,
          ),
          Row(
            children: [
              Expanded(child: Divider()),
              Container(
                child: Text("Generate Code"),
              ),
              Expanded(child: Divider()),
            ],
          ),
          Container(
            height: size.height * 0.1,
          ),
          RoundedInputField(
            hintText: "mobile no",
          ),
          RoundedInputField(
            hintText: "coupon code",
          ),
          Container(
            height: size.height * 0.05,
          ),
          RoundedButton(text: "share", press: () => {})
        ],
      ),
    );
  }
}
