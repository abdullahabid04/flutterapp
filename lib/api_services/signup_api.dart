import 'package:http/http.dart' as http;
import 'dart:convert';
import '/models/signup_models/signup_request.dart';
import '/models/signup_models/signup_response.dart';

class APIService {
  Future<SignUpResponse> signup(SignUpRequest signUpRequest) async {
    String url = "http://care-engg.com/api/signup";

    final response =
        await http.post(Uri.parse(url), body: signUpRequest.toJson());
    //   if (response.statusCode == 200 || response.statusCode == 400) {
    return SignUpResponse.fromJson(
      json.decode(response.body),
    );
    //   } else {
    //     throw Exception('Failed to load data!');
    //   }
  }
}
