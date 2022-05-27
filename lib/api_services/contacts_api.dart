import 'package:http/http.dart' as http;
import 'dart:convert';
import '/models/contacts_models/contacts_request.dart';
import '/models/contacts_models/contacts_response.dart';

class GetContacts {
  Future<GetContactsResponse> contacts(
      GetContactsRequest getContactsRequest) async {
    String url =
        "http://care-engg.com/api/companycontacts?role=${getContactsRequest.role}";

    final response = await http.get(Uri.parse(url));
    //   if (response.statusCode == 200 || response.statusCode == 400) {
    return GetContactsResponse.fromJson(
      json.decode(response.body),
    );
    //   } else {
    //     throw Exception('Failed to load data!');
    //   }
  }
}
