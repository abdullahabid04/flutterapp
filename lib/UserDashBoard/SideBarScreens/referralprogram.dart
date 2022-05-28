import 'package:flutter/material.dart';
import '/components/rounded_input_field.dart';
import '/components/rounded_button.dart';
import '/models/referral_models/get_referral_request.dart';
import '/models/referral_models/get_referral_response.dart';
import '/models/referral_models/post_referral_request.dart';
import '/models/referral_models/post_referral_response.dart';
import '/api_services/referral_api/getreferrals_api.dart';
import '/api_services/referral_api/postreferrals_api.dart';

class ReferProgram extends StatefulWidget {
  const ReferProgram({Key? key}) : super(key: key);

  @override
  State<ReferProgram> createState() => _ReferProgramState();
}

class _ReferProgramState extends State<ReferProgram> {
  bool referral1status = false;
  bool referral2status = false;
  bool referral3status = false;

  final referral1namecontroller = TextEditingController();
  final referral1mobilecontroller = TextEditingController();
  final referral2namecontroller = TextEditingController();
  final referral2mobilecontroller = TextEditingController();
  final referral3namecontroller = TextEditingController();
  final referral3mobilecontroller = TextEditingController();

  late GetReferralsAPI getReferralsAPI;
  late PostReferralsAPI postReferralsAPI;
  late GetReferralRequest getReferralRequest;
  late PostReferralRequest postReferralRequest;

  @override
  void initState() {
    super.initState();

    getReferralsAPI = GetReferralsAPI();
    postReferralsAPI = PostReferralsAPI();
    getReferralRequest = GetReferralRequest();
    postReferralRequest = PostReferralRequest();
  }

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
              controller: referral1namecontroller,
              hintText: "Referral 1 name",
            ),
            Container(
              height: size.height * 0.01,
            ),
            RoundedInputField(
              controller: referral1mobilecontroller,
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
              controller: referral2namecontroller,
              hintText: "Referral 2 name",
            ),
            Container(
              height: size.height * 0.01,
            ),
            RoundedInputField(
              controller: referral2mobilecontroller,
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
              controller: referral3namecontroller,
              hintText: "Referral 3 name",
            ),
            Container(
              height: size.height * 0.01,
            ),
            RoundedInputField(
              controller: referral3mobilecontroller,
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
