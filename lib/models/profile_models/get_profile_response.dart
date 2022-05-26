class GetProfileResponse {
  int? status;
  String? message;
  Profile? profile;

  GetProfileResponse({this.status, this.message, this.profile});

  GetProfileResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    profile =
        json['profile'] != null ? new Profile.fromJson(json['profile']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.profile != null) {
      data['profile'] = this.profile!.toJson();
    }
    return data;
  }
}

class Profile {
  String? id;
  String? firstName;
  String? lastName;
  String? userId;
  String? eMail;
  String? mobileNo;
  String? password;
  String? dateCreated;

  Profile(
      {this.id,
      this.firstName,
      this.lastName,
      this.userId,
      this.eMail,
      this.mobileNo,
      this.password,
      this.dateCreated});

  Profile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    userId = json['user_id'];
    eMail = json['e_mail'];
    mobileNo = json['mobile_no'];
    password = json['password'];
    dateCreated = json['date_created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['user_id'] = this.userId;
    data['e_mail'] = this.eMail;
    data['mobile_no'] = this.mobileNo;
    data['password'] = this.password;
    data['date_created'] = this.dateCreated;
    return data;
  }
}
