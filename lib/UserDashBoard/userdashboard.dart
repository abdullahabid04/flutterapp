import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'mydrawer.dart';
import '/components/small_rounded_button.dart';
import '/components/rounded_button.dart';

class UserDashBoard extends StatelessWidget {
  const UserDashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('AquaPure', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.report_problem,
              color: Colors.white,
            ),
            onPressed: () {},
            tooltip: "Report a Problem",
          )
        ],
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    // width: size.width * 0.30,
                    height: size.height * 0.30,
                    color: Colors.white,
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(top: 40),
                    child: Image.asset(
                      'assets/images/new_water.png',
                    )),
                Positioned(
                  // The Positioned widget is used to position the text inside the Stack widget
                  bottom: size.height * 0.06,
                  right: size.width * 0.30,

                  child: Container(
                    // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                    width: size.height * 0.15,
                    // color: Colors.black54,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Water',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              // width: size.width * 0.30,
              height: size.height * 0.07,
            ),
            Container(
              // height: size.height * 1,
              color: Color.fromARGB(255, 141, 223, 255),
              child: Column(children: [
                Container(
                  height: size.height * 0.02,
                  // color: Colors.blueAccent,
                ),
                Container(
                  // height: size.height * 0.07,
                  // color: Colors.blueAccent,
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Expanded(
                          child: SmallRoundedButton(
                              text: "today", press: () => {})),
                      Container(
                        width: size.width * 0.02,
                        // height: size.height * 0.10,
                      ),
                      Expanded(
                          child: SmallRoundedButton(
                              text: "7 days", press: () => {})),
                      Container(
                        width: size.width * 0.02,
                        // height: size.height * 0.10,
                      ),
                      Expanded(
                          child: SmallRoundedButton(
                              text: "30 days", press: () => {})),
                      Container(
                        width: size.width * 0.02,
                        // height: size.height * 0.10,
                      ),
                      Expanded(
                          child: SmallRoundedButton(
                              text: "1 year", press: () => {})),
                      Padding(padding: EdgeInsets.only(right: 10)),
                    ],
                  ),
                ),
                Row(children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          child: Icon(Icons.water),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                        ),
                        Container(
                          child: Text("O"),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                        ),
                        Container(
                          child: Text("Line Water"),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.12,
                    child: VerticalDivider(
                      color: Colors.black,
                      width: 1,
                      thickness: 1,
                      indent: 3,
                      endIndent: 3,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          child: Icon(Icons.water_drop),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                        ),
                        Container(
                          child: Text("O"),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                        ),
                        Container(
                          child: Text("My Water"),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.12,
                    child: VerticalDivider(
                      color: Colors.black,
                      width: 1,
                      thickness: 1,
                      indent: 3,
                      endIndent: 3,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          child: Icon(Icons.water_damage),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                        ),
                        Container(
                          child: Text("O"),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                        ),
                        Container(
                          child: Text("Bottles Saved"),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ]),
                Container(
                  // width: size.width * 0.30,
                  height: size.height * 0.05,
                ),
                Row(children: <Widget>[
                  Expanded(
                      child: Divider(
                    color: Colors.black,
                  )),
                  Text("   System Health   "),
                  Expanded(
                      child: Divider(
                    color: Colors.black,
                  )),
                ]),
                Container(
                  // width: size.width * 0.30,
                  height: size.height * 0.03,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 15),
                          child: Image.asset(
                            'assets/images/glass.jpg',
                            width: size.width * 0.1,
                            height: size.height * 0.1,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(right: 40, left: 40),
                            // width: size.width * 0.5,
                            // height: size.height * 0.05,
                            child: Text("Particle Filter"),
                          ),
                        ),
                        Container(
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.all(15),
                            // width: size.width * 0.2,
                            // height: size.height * 0.05,
                            child: Text("O")),
                      ],
                    ),
                    Container(
                      height: size.height * 0.001,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 75, right: 10),
                      child: Divider(color: Colors.black),
                    ),
                    Container(
                      height: size.height * 0.001,
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 15),
                          child: Image.asset(
                            'assets/images/glass.jpg',
                            width: size.width * 0.1,
                            height: size.height * 0.1,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(
                                right: 40,
                                left: 40), // width: size.width * 0.5,
                            // height: size.height * 0.05,
                            child: Text("Anti-Bacterial Filter"),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.all(15),
                          // width: size.width * 0.2,
                          // height: size.height * 0.05,
                          child: Text("O"),
                        ),
                      ],
                    ),
                    Container(
                      height: size.height * 0.001,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 75, right: 10),
                      child: Divider(color: Colors.black),
                    ),
                    Container(
                      height: size.height * 0.001,
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 15),
                          child: Image.asset(
                            'assets/images/glass.jpg',
                            width: size.width * 0.1,
                            height: size.height * 0.1,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(right: 40, left: 40),
                            // width: size.width * 0.5,
                            // height: size.height * 0.05,
                            child: Text("Carbon Filter"),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.all(15),
                          // width: size.width * 0.2,
                          // height: size.height * 0.05,
                          child: Text("O"),
                        ),
                      ],
                    ),
                    Container(
                      height: size.height * 0.001,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 75, right: 10),
                      child: Divider(color: Colors.black),
                    ),
                    Container(
                      height: size.height * 0.001,
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 15),
                          child: Image.asset(
                            'assets/images/glass.jpg',
                            width: size.width * 0.1,
                            height: size.height * 0.1,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(right: 40, left: 40),
                            // width: size.width * 0.5,
                            // height: size.height * 0.05,
                            child: Text("RO Filter"),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.all(15),
                          // width: size.width * 0.2,
                          // height: size.height * 0.05,
                          child: Text("O"),
                        ),
                      ],
                    ),
                    Container(
                      height: size.height * 0.001,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 75, right: 10),
                      child: Divider(color: Colors.black),
                    ),
                    Container(
                      height: size.height * 0.001,
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 15),
                          child: Image.asset(
                            'assets/images/glass.jpg',
                            width: size.width * 0.1,
                            height: size.height * 0.1,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(right: 40, left: 40),
                            // width: size.width * 0.5,
                            // height: size.height * 0.05,
                            child: Text("Mineral Filter"),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.all(15),
                          // width: size.width * 0.2,
                          // height: size.height * 0.05,
                          child: Text("O"),
                        ),
                      ],
                    ),
                    Container(
                      height: size.height * 0.001,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 75, right: 10),
                      child: Divider(color: Colors.black),
                    ),
                    Container(
                      height: size.height * 0.001,
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 15),
                          child: Image.asset(
                            'assets/images/glass.jpg',
                            width: size.width * 0.1,
                            height: size.height * 0.1,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(right: 40, left: 40),
                            // width: size.width * 0.5,
                            // height: size.height * 0.05,
                            child: Text("UV LED"),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.all(15),
                          // width: size.width * 0.2,
                          // height: size.height * 0.05,
                          child: Text("O"),
                        ),
                      ],
                    ),
                    Container(
                      height: size.height * 0.001,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 75, right: 10),
                      child: Divider(color: Colors.black),
                    ),
                    Container(
                      height: size.height * 0.001,
                    ),
                  ],
                ),
                Container(
                  height: size.height * 0.05,
                ),
                Row(children: <Widget>[
                  Expanded(
                      child: Divider(
                    color: Colors.black,
                  )),
                  Text("   TDS Quality   "),
                  Expanded(
                      child: Divider(
                    color: Colors.black,
                  )),
                ]),
                Container(
                  height: size.height * 0.05,
                ),
                Container(
                  height: size.height * 0.25,
                  width: size.width,
                  color: Colors.lightBlue,
                  alignment: Alignment.center,
                  child: Text("Graph Here"),
                ),
                Container(
                  height: size.height * 0.05,
                ),
                Container(
                  child: RoundedButton(
                    press: () => {},
                    text: "Report a Problem",
                  ),
                ),
                Container(
                  height: size.height * 0.05,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
