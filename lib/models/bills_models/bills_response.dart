class BillsResponse {
  int? status;
  String? message;
  List<Bills>? bills;

  BillsResponse({this.status, this.message, this.bills});

  BillsResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['bills'] != null) {
      bills = <Bills>[];
      json['bills'].forEach((v) {
        bills!.add(new Bills.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.bills != null) {
      data['bills'] = this.bills!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Bills {
  String? id;
  String? mobileNo;
  String? productId;
  String? bills;
  String? rent;
  String? total;
  String? status;
  String? dateBuyed;
  String? dueDate;

  Bills(
      {this.id,
      this.mobileNo,
      this.productId,
      this.bills,
      this.rent,
      this.total,
      this.status,
      this.dateBuyed,
      this.dueDate});

  Bills.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mobileNo = json['mobile_no'];
    productId = json['product_id'];
    bills = json['bills'];
    rent = json['rent'];
    total = json['total'];
    status = json['status'];
    dateBuyed = json['date_buyed'];
    dueDate = json['due_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['mobile_no'] = this.mobileNo;
    data['product_id'] = this.productId;
    data['bills'] = this.bills;
    data['rent'] = this.rent;
    data['total'] = this.total;
    data['status'] = this.status;
    data['date_buyed'] = this.dateBuyed;
    data['due_date'] = this.dueDate;
    return data;
  }
}
