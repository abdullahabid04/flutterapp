class ServicesResponse {
  int? status;
  String? message;
  List<Services>? services;

  ServicesResponse({this.status, this.message, this.services});

  ServicesResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['services'] != null) {
      services = <Services>[];
      json['services'].forEach((v) {
        services!.add(new Services.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.services != null) {
      data['services'] = this.services!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Services {
  String? id;
  String? mobileNo;
  String? productId;
  String? serviceType;
  String? price;
  String? status;
  String? dateBuyed;

  Services(
      {this.id,
      this.mobileNo,
      this.productId,
      this.serviceType,
      this.price,
      this.status,
      this.dateBuyed});

  Services.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mobileNo = json['mobile_no'];
    productId = json['product_id'];
    serviceType = json['service_type'];
    price = json['price'];
    status = json['status'];
    dateBuyed = json['date_buyed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['mobile_no'] = this.mobileNo;
    data['product_id'] = this.productId;
    data['service_type'] = this.serviceType;
    data['price'] = this.price;
    data['status'] = this.status;
    data['date_buyed'] = this.dateBuyed;
    return data;
  }
}
