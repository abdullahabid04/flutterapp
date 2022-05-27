class GetContactsResponse {
  int? status;
  String? message;
  Contactor? contactor;

  GetContactsResponse({this.status, this.message, this.contactor});

  GetContactsResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    contactor = json['contactor'] != null
        ? new Contactor.fromJson(json['contactor'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.contactor != null) {
      data['contactor'] = this.contactor!.toJson();
    }
    return data;
  }
}

class Contactor {
  String? id;
  String? contactorName;
  String? contactorMobile;
  String? contactorRole;

  Contactor(
      {this.id, this.contactorName, this.contactorMobile, this.contactorRole});

  Contactor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    contactorName = json['contactor_name'];
    contactorMobile = json['contactor_mobile'];
    contactorRole = json['contactor_role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['contactor_name'] = this.contactorName;
    data['contactor_mobile'] = this.contactorMobile;
    data['contactor_role'] = this.contactorRole;
    return data;
  }
}
