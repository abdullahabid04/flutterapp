import 'package:http/http.dart' as http;
import 'dart:convert';
import '/models/referral_models/post_referral_request.dart';
import '/models/referral_models/post_referral_response.dart';

class PostReferralsAPI {
  Future<PostReferralResponse> postreferrals(
      PostReferralRequest postReferralRequest) async {
    String url = "http://care-engg.com/api/updateprofile";

    final response =
        await http.post(Uri.parse(url), body: postReferralRequest.toJson());
    //   if (response.statusCode == 200 || response.statusCode == 400) {
    return PostReferralResponse.fromJson(
      json.decode(response.body),
    );
    //   } else {
    //     throw Exception('Failed to load data!');
    //   }
  }
}
