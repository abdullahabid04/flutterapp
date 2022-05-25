class DevicesResponse {
  int? status;
  String? message;
  List<Devices>? devices;

  DevicesResponse({this.status, this.message, this.devices});

  DevicesResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['devices'] != null) {
      devices = <Devices>[];
      json['devices'].forEach((v) {
        devices!.add(new Devices.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.devices != null) {
      data['devices'] = this.devices!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Devices {
  String? id;
  String? mobileNo;
  String? productId;
  String? originalOwner;
  String? sharedOwner;
  String? status;
  String? dateBuyed;

  Devices(
      {this.id,
      this.mobileNo,
      this.productId,
      this.originalOwner,
      this.sharedOwner,
      this.status,
      this.dateBuyed});

  Devices.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mobileNo = json['mobile_no'];
    productId = json['product_id'];
    originalOwner = json['original_owner'];
    sharedOwner = json['shared_owner'];
    status = json['status'];
    dateBuyed = json['date_buyed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['mobile_no'] = this.mobileNo;
    data['product_id'] = this.productId;
    data['original_owner'] = this.originalOwner;
    data['shared_owner'] = this.sharedOwner;
    data['status'] = this.status;
    data['date_buyed'] = this.dateBuyed;
    return data;
  }
}
