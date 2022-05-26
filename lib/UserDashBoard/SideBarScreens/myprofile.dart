import 'dart:developer';
import 'package:flutter/material.dart';
import '/components/rounded_input_field.dart';
import '/models/profile_models/get_profile_request.dart';
import '/models/profile_models/get_profile_response.dart';
import '/models/profile_models/update_profile_request.dart';
import '/models/profile_models/update_profile_request.dart';
import '/api_services/profile_api/get_profile_api.dart';
import '/api_services/profile_api/update_profile_api.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isApiCallProcess = false;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final firstnamecontroller = TextEditingController();
  final lastnamecontroller = TextEditingController();
  final mobilenocontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  late GetProfileRequest getProfileRequest;
  late UpdateProfileRequest updateProfileRequest;
  late GetProfileAPI getProfileAPI;
  late UpdateProfileAPI updateProfileAPI;

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  @override
  void initState() {
    super.initState();
    getProfileRequest = GetProfileRequest();
    updateProfileRequest = UpdateProfileRequest();
    getProfileRequest.mobileNo = "123";
    getProfileAPI = new GetProfileAPI();
    updateProfileAPI = new UpdateProfileAPI();
    getProfileAPI.getprofile(getProfileRequest).then((value) {
      if (value != null) {
        if (value.status == 1) {
          setState(() {
            isApiCallProcess = false;
            firstnamecontroller.text = value.profile!.firstName!;
            lastnamecontroller.text = value.profile!.lastName!;
            mobilenocontroller.text = getProfileRequest.mobileNo!;
            emailcontroller.text = value.profile!.eMail!;
          });
        } else {
          setState(() {
            isApiCallProcess = false;
            firstnamecontroller.text = "";
            lastnamecontroller.text = "";
            mobilenocontroller.text = "";
            emailcontroller.text = "";
          });
        }
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(50),
        child: Form(
          key: globalFormKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 25),
              Text(
                "Profile",
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: firstnamecontroller,
                keyboardType: TextInputType.name,
                onSaved: (input) => updateProfileRequest.firstName = input,
                validator: (input) =>
                    input!.isEmpty ? "First Name is required" : null,
                decoration: InputDecoration(
                  hintText: "First Name",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              Theme.of(context).accentColor.withOpacity(0.2))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).accentColor)),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: lastnamecontroller,
                keyboardType: TextInputType.name,
                onSaved: (input) => updateProfileRequest.lastName = input,
                validator: (input) =>
                    input!.isEmpty ? "Last Name is required" : null,
                decoration: InputDecoration(
                  hintText: "Last Name",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              Theme.of(context).accentColor.withOpacity(0.2))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).accentColor)),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: mobilenocontroller,
                keyboardType: TextInputType.phone,
                enabled: false,
                readOnly: true,
                onSaved: (input) => updateProfileRequest.mobileNo = input,
                validator: (input) =>
                    input!.isEmpty ? "Mobile no is required" : null,
                decoration: InputDecoration(
                  hintText: "Mobile no",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              Theme.of(context).accentColor.withOpacity(0.2))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).accentColor)),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: emailcontroller,
                keyboardType: TextInputType.name,
                onSaved: (input) => updateProfileRequest.eMail = input,
                validator: (input) =>
                    input!.isEmpty ? "E-mail is required" : null,
                decoration: InputDecoration(
                  hintText: "E-mail",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              Theme.of(context).accentColor.withOpacity(0.2))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).accentColor)),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FlatButton(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 40),
                    onPressed: () {
                      updateProfileRequest.firstName = firstnamecontroller.text;
                      updateProfileRequest.lastName = lastnamecontroller.text;
                      updateProfileRequest.mobileNo = mobilenocontroller.text;
                      updateProfileRequest.eMail = emailcontroller.text;

                      updateProfileAPI
                          .updateprofile(updateProfileRequest)
                          .then((value) {
                        if (value != null) {
                          if (value.status == 1) {}
                        }
                      });
                    },
                    child: Text(
                      "Update",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Theme.of(context).accentColor,
                    shape: StadiumBorder(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class Profile extends StatelessWidget {
//   const Profile({Key? key}) : super(key: key);


//   }
// }
