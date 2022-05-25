import 'package:http/http.dart' as http;
import 'dart:convert';
import '/models/services_models/services_request.dart';
import '/models/services_models/services_response.dart';

class APIService {
  Future<ServicesResponse> services(ServicesRequest servicesRequest) async {
    String url =
        "http://care-engg.com/api/myservices?mobile_no=${servicesRequest.mobileNo}";

    final response = await http.get(Uri.parse(url));
    //   if (response.statusCode == 200 || response.statusCode == 400) {
    return ServicesResponse.fromJson(
      json.decode(response.body),
    );
    //   } else {
    //     throw Exception('Failed to load data!');
    //   }
  }
}
