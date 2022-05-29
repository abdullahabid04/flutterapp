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

    getReferralRequest.mobileNo = "13579";

    getReferralsAPI.getreferrals(getReferralRequest).then((value) {
      if (value != null) {
        if (value.status == 1) {
          if (value.myreferrals != null) {
            if (value.myreferrals!.status == 1) {
              if (value.myreferrals!.referrals!.count == 1) {
                setState(() {
                  referral1status = true;
                  referral1namecontroller.text =
                      value.myreferrals!.referrals!.referral1!.referralName!;
                  referral1mobilecontroller.text =
                      value.myreferrals!.referrals!.referral1!.referralMobile!;
                });
              }
              if (value.myreferrals!.referrals!.count == 2) {
                setState(() {
                  referral1status = true;
                  referral2status = true;
                  referral1namecontroller.text =
                      value.myreferrals!.referrals!.referral1!.referralName!;
                  referral1mobilecontroller.text =
                      value.myreferrals!.referrals!.referral1!.referralMobile!;
                  referral2namecontroller.text =
                      value.myreferrals!.referrals!.referral2!.referralName!;
                  referral2mobilecontroller.text =
                      value.myreferrals!.referrals!.referral2!.referralMobile!;
                });
              }
              if (value.myreferrals!.referrals!.count == 3) {
                setState(() {
                  referral1status = true;
                  referral2status = true;
                  referral3status = true;
                  referral1namecontroller.text =
                      value.myreferrals!.referrals!.referral1!.referralName!;
                  referral1mobilecontroller.text =
                      value.myreferrals!.referrals!.referral1!.referralMobile!;
                  referral2namecontroller.text =
                      value.myreferrals!.referrals!.referral2!.referralName!;
                  referral2mobilecontroller.text =
                      value.myreferrals!.referrals!.referral2!.referralMobile!;
                  referral3namecontroller.text =
                      value.myreferrals!.referrals!.referral3!.referralName!;
                  referral3mobilecontroller.text =
                      value.myreferrals!.referrals!.referral3!.referralMobile!;
                });
              }
            }
          }
        }
      }
    });
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
            press: () {
              postReferralRequest.mobileNo = "13579";

              if (referral1status == false ||
                  referral2status == false ||
                  referral3status == false) {
                if (referral1status == false) {
                  if (referral1namecontroller.text.isNotEmpty &&
                      referral1mobilecontroller.text.isNotEmpty) {
                    postReferralRequest.referral1Name =
                        referral1namecontroller.text;
                    postReferralRequest.referral1Mobile =
                        referral1mobilecontroller.text;
                  } else {
                    postReferralRequest.referral1Name = "";
                    postReferralRequest.referral1Mobile = "";
                  }
                } else {
                  postReferralRequest.referral1Name = "";
                  postReferralRequest.referral1Mobile = "";
                }
                if (referral2status == false) {
                  if (referral2namecontroller.text.isNotEmpty &&
                      referral2mobilecontroller.text.isNotEmpty) {
                    postReferralRequest.referral2Name =
                        referral2namecontroller.text;
                    postReferralRequest.referral2Mobile =
                        referral2mobilecontroller.text;
                  } else {
                    postReferralRequest.referral2Name = "";
                    postReferralRequest.referral2Mobile = "";
                  }
                } else {
                  postReferralRequest.referral2Name = "";
                  postReferralRequest.referral2Mobile = "";
                }
                if (referral3status == false) {
                  if (referral3namecontroller.text.isNotEmpty &&
                      referral3mobilecontroller.text.isNotEmpty) {
                    postReferralRequest.referral3Name =
                        referral3namecontroller.text;
                    postReferralRequest.referral3Mobile =
                        referral3mobilecontroller.text;
                  } else {
                    postReferralRequest.referral3Name = "";
                    postReferralRequest.referral3Mobile = "";
                  }
                } else {
                  postReferralRequest.referral3Name = "";
                  postReferralRequest.referral3Mobile = "";
                }

                postReferralsAPI
                    .postreferrals(postReferralRequest)
                    .then((value) {
                  if (value != null) {
                    if (value.status == 1) {
                      print(value.message);
                    }
                  }
                });
              } else {}
            },
          ),
        ),
      ]),
    );
  }
}
