import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 50),
        child: Row(children: [
          Expanded(
              child: ElevatedButton(onPressed: () => {}, child: Text("Call"))),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          Expanded(
              child:
                  ElevatedButton(onPressed: () => {}, child: Text("Message"))),
        ]),
      ),
    );
  }
}
