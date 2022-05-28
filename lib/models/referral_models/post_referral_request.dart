class PostReferralRequest {
  String? mobileNo;
  String? referral1Name;
  String? referral1Mobile;
  String? referral2Name;
  String? referral2Mobile;
  String? referral3Name;
  String? referral3Mobile;

  PostReferralRequest(
      {this.mobileNo,
      this.referral1Name,
      this.referral1Mobile,
      this.referral2Name,
      this.referral2Mobile,
      this.referral3Name,
      this.referral3Mobile});

  PostReferralRequest.fromJson(Map<String, dynamic> json) {
    mobileNo = json['mobile_no'];
    referral1Name = json['referral_1_name'];
    referral1Mobile = json['referral_1_mobile'];
    referral2Name = json['referral_2_name'];
    referral2Mobile = json['referral_2_mobile'];
    referral3Name = json['referral_3_name'];
    referral3Mobile = json['referral_3_mobile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mobile_no'] = this.mobileNo;
    data['referral_1_name'] = this.referral1Name;
    data['referral_1_mobile'] = this.referral1Mobile;
    data['referral_2_name'] = this.referral2Name;
    data['referral_2_mobile'] = this.referral2Mobile;
    data['referral_3_name'] = this.referral3Name;
    data['referral_3_mobile'] = this.referral3Mobile;
    return data;
  }
}
