class DevicesRequest {
  String? mobileNo;

  DevicesRequest({this.mobileNo});

  DevicesRequest.fromJson(Map<String, dynamic> json) {
    mobileNo = json['mobile_no'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mobile_no'] = this.mobileNo;
    return data;
  }
}
