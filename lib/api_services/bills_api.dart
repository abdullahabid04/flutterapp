import 'package:http/http.dart' as http;
import 'dart:convert';
import '/models/bills_models/bills_request.dart';
import '/models/bills_models/bills_response.dart';

class APIService {
  Future<BillsResponse> bills(BillsRequest billsRequest) async {
    String url =
        "http://care-engg.com/api/mybills?mobile_no=${billsRequest.mobileNo}";

    final response = await http.get(Uri.parse(url));
    //   if (response.statusCode == 200 || response.statusCode == 400) {
    return BillsResponse.fromJson(
      json.decode(response.body),
    );
    //   } else {
    //     throw Exception('Failed to load data!');
    //   }
  }
}
