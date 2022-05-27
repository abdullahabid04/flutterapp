class GetContactsRequest {
  String? role;

  GetContactsRequest({this.role});

  GetContactsRequest.fromJson(Map<String, dynamic> json) {
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['role'] = this.role;
    return data;
  }
}
