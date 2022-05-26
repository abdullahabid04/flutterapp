import 'package:http/http.dart' as http;
import 'dart:convert';
import '/models/profile_models/get_profile_request.dart';
import '/models/profile_models/get_profile_response.dart';

class GetProfileAPI {
  Future<GetProfileResponse> getprofile(
      GetProfileRequest getProfileRequest) async {
    String url =
        "http://care-engg.com/api/profile?mobile_no=${getProfileRequest.mobileNo}";

    final response = await http.get(Uri.parse(url));
    //   if (response.statusCode == 200 || response.statusCode == 400) {
    return GetProfileResponse.fromJson(
      json.decode(response.body),
    );
    //   } else {
    //     throw Exception('Failed to load data!');
    //   }
  }
}
