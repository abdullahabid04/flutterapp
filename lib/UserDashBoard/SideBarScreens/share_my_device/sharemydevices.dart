import 'package:flutter/material.dart';
import 'generatecode.dart';

class ShareDevice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      child: Column(
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
            height: size.height * 0.05,
          ),
          // DataTable(
          //   columns: [],
          //   rows: [],
          // ),
          Container(
            height: size.height * 0.05,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GenerateCode()),
                  );
                },
                child: Text("Generate Code")),
          ),
        ],
      ),
    );
  }
}
