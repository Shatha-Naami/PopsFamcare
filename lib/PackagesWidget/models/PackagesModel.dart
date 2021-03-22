import 'dart:convert';

PackageModel welcomeFromJson(String str) => PackageModel.fromJson(json.decode(str));

String welcomeToJson(PackageModel data) => json.encode(data.toJson());

class PackageModel {
  PackageModel({
    this.data,
  });

  List<PackageData> data;

  factory PackageModel.fromJson(Map<String, dynamic> json) => PackageModel(
    data: List<PackageData>.from(json["data"].map((x) => PackageData.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class PackageData {
  PackageData({
    this.id,
    this.name,
    this.description,
    this.type,
    this.price,
    this.regularPrice,
    this.hasFreeSession,
    this.validCoupons,
    this.currency,
  });

  int id;
  String name;
  String description;
  String type;
  int price;
  int regularPrice;
  bool hasFreeSession;
  List<ValidCoupon> validCoupons;
  String currency;

  factory PackageData.fromJson(Map<String, dynamic> json) => PackageData(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    type: json["type"],
    price: json["price"],
    regularPrice: json["regular_price"],
    hasFreeSession: json["has_free_session"],
    validCoupons: List<ValidCoupon>.from(json["valid_coupons"].map((x) => ValidCoupon.fromJson(x))),
    currency: json["currency"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "type": type,
    "price": price,
    "regular_price": regularPrice,
    "has_free_session": hasFreeSession,
    "valid_coupons": List<dynamic>.from(validCoupons.map((x) => x.toJson())),
    "currency": currency,
  };
}

class ValidCoupon {
  ValidCoupon({
    this.id,
    this.code,
    this.discountType,
    this.amount,
    this.donor,
  });

  int id;
  String code;
  String discountType;
  String amount;
  Donor donor;

  factory ValidCoupon.fromJson(Map<String, dynamic> json) => ValidCoupon(
    id: json["id"],
    code: json["code"],
    discountType: json["discount_type"],
    amount: json["amount"],
    donor: Donor.fromJson(json["donor"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "code": code,
    "discount_type": discountType,
    "amount": amount,
    "donor": donor.toJson(),
  };
}

class Donor {
  Donor({
    this.id,
    this.name,
    this.logo,
  });

  int id;
  String name;
  String logo;

  factory Donor.fromJson(Map<String, dynamic> json) => Donor(
    id: json["id"],
    name: json["name"],
    logo: json["logo"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "logo": logo,
  };
}
