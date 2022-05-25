import 'package:http/http.dart' as http;
import 'dart:convert';
import '/models/devices_models/devices_request.dart';
import '/models/devices_models/devices_response.dart';

class APIService {
  Future<DevicesResponse> devices(DevicesRequest devicesRequest) async {
    String url =
        "http://care-engg.com/api/mydevices?mobile_no=${devicesRequest.mobileNo}";

    final response = await http.get(Uri.parse(url));
    //   if (response.statusCode == 200 || response.statusCode == 400) {
    return DevicesResponse.fromJson(
      json.decode(response.body),
    );
    //   } else {
    //     throw Exception('Failed to load data!');
    //   }
  }
}
