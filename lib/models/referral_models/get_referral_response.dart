class GetReferralResponse {
  int? status;
  String? message;
  Myreferrals? myreferrals;

  GetReferralResponse({this.status, this.message, this.myreferrals});

  GetReferralResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    myreferrals = json['myreferrals'] != null
        ? new Myreferrals.fromJson(json['myreferrals'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.myreferrals != null) {
      data['myreferrals'] = this.myreferrals!.toJson();
    }
    return data;
  }
}

class Myreferrals {
  int? status;
  Referrals? referrals;

  Myreferrals({this.status, this.referrals});

  Myreferrals.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    referrals = json['referrals'] != null
        ? new Referrals.fromJson(json['referrals'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.referrals != null) {
      data['referrals'] = this.referrals!.toJson();
    }
    return data;
  }
}

class Referrals {
  int? count;
  Referral1? referral1;
  Referral2? referral2;
  Referral3? referral3;

  Referrals({this.count, this.referral1, this.referral2, this.referral3});

  Referrals.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    referral1 = json['referral_1'] != null
        ? new Referral1.fromJson(json['referral_1'])
        : null;
    referral2 = json['referral_2'] != null
        ? new Referral2.fromJson(json['referral_2'])
        : null;
    referral3 = json['referral_3'] != null
        ? new Referral3.fromJson(json['referral_3'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    if (this.referral1 != null) {
      data['referral_1'] = this.referral1!.toJson();
    }
    if (this.referral2 != null) {
      data['referral_2'] = this.referral2!.toJson();
    }
    if (this.referral3 != null) {
      data['referral_3'] = this.referral3!.toJson();
    }
    return data;
  }
}

class Referral1 {
  String? id;
  String? mobileNo;
  String? referralName;
  String? referralMobile;
  String? status;

  Referral1(
      {this.id,
      this.mobileNo,
      this.referralName,
      this.referralMobile,
      this.status});

  Referral1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mobileNo = json['mobile_no'];
    referralName = json['referral_name'];
    referralMobile = json['referral_mobile'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['mobile_no'] = this.mobileNo;
    data['referral_name'] = this.referralName;
    data['referral_mobile'] = this.referralMobile;
    data['status'] = this.status;
    return data;
  }
}

class Referral2 {
  String? id;
  String? mobileNo;
  String? referralName;
  String? referralMobile;
  String? status;

  Referral2(
      {this.id,
      this.mobileNo,
      this.referralName,
      this.referralMobile,
      this.status});

  Referral2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mobileNo = json['mobile_no'];
    referralName = json['referral_name'];
    referralMobile = json['referral_mobile'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['mobile_no'] = this.mobileNo;
    data['referral_name'] = this.referralName;
    data['referral_mobile'] = this.referralMobile;
    data['status'] = this.status;
    return data;
  }
}

class Referral3 {
  String? id;
  String? mobileNo;
  String? referralName;
  String? referralMobile;
  String? status;

  Referral3(
      {this.id,
      this.mobileNo,
      this.referralName,
      this.referralMobile,
      this.status});

  Referral3.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mobileNo = json['mobile_no'];
    referralName = json['referral_name'];
    referralMobile = json['referral_mobile'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['mobile_no'] = this.mobileNo;
    data['referral_name'] = this.referralName;
    data['referral_mobile'] = this.referralMobile;
    data['status'] = this.status;
    return data;
  }
}
