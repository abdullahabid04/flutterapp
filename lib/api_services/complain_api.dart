import 'package:http/http.dart' as http;
import 'dart:convert';
import '/models/complaint_models/complaint_request.dart';
import '/models/complaint_models/complaint_response.dart';

class SendComplain {
  Future<ComplaintResponse> sendcomplain(
      ComplaintRequest complaintRequest) async {
    String url = "http://care-engg.com/api/sendcomplaint";

    final response =
        await http.post(Uri.parse(url), body: complaintRequest.toJson());
    //   if (response.statusCode == 200 || response.statusCode == 400) {
    return ComplaintResponse.fromJson(
      json.decode(response.body),
    );
    //   } else {
    //     throw Exception('Failed to load data!');
    //   }
  }
}
