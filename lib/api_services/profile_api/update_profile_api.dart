import 'package:http/http.dart' as http;
import 'dart:convert';
import '/models/profile_models/update_profile_request.dart';
import '/models/profile_models/update_profile_response.dart';

class UpdateProfileAPI {
  Future<UpdateProfileResponse> updateprofile(
      UpdateProfileRequest updateProfileRequest) async {
    String url = "http://care-engg.com/api/updateprofile";

    final response =
        await http.post(Uri.parse(url), body: updateProfileRequest.toJson());
    //   if (response.statusCode == 200 || response.statusCode == 400) {
    return UpdateProfileResponse.fromJson(
      json.decode(response.body),
    );
    //   } else {
    //     throw Exception('Failed to load data!');
    //   }
  }
}
