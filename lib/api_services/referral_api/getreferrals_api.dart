import 'package:http/http.dart' as http;
import 'dart:convert';
import '/models/referral_models/get_referral_request.dart';
import '/models/referral_models/get_referral_response.dart';

class GetReferralsAPI {
  Future<GetReferralResponse> getreferrals(
      GetReferralRequest getReferralRequest) async {
    String url =
        "http://care-engg.com/api/profile?mobile_no=${getReferralRequest.mobileNo}";

    final response = await http.get(Uri.parse(url));
    //   if (response.statusCode == 200 || response.statusCode == 400) {
    return GetReferralResponse.fromJson(
      json.decode(response.body),
    );
    //   } else {
    //     throw Exception('Failed to load data!');
    //   }
  }
}
