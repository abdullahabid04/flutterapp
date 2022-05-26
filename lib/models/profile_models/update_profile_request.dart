class UpdateProfileRequest {
  String? firstName;
  String? lastName;
  String? mobileNo;
  String? eMail;

  UpdateProfileRequest(
      {this.firstName, this.lastName, this.mobileNo, this.eMail});

  UpdateProfileRequest.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    mobileNo = json['mobile_no'];
    eMail = json['e_mail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['mobile_no'] = this.mobileNo;
    data['e_mail'] = this.eMail;
    return data;
  }
}
