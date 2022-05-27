class ComplaintRequest {
  String? mobileNo;
  String? complain;

  ComplaintRequest({this.mobileNo, this.complain});

  ComplaintRequest.fromJson(Map<String, dynamic> json) {
    mobileNo = json['mobile_no'];
    complain = json['complain'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mobile_no'] = this.mobileNo;
    data['complain'] = this.complain;
    return data;
  }
}
