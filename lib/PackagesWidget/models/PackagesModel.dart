
import 'dart:convert';

PackageModel welcomeFromJson(String str) => PackageModel.fromJson(json.decode(str));

String welcomeToJson(PackageModel data) => json.encode(data.toJson());

class PackageModel {
  PackageModel({
    this.data,
    this.links,
    this.meta,
  });

  List<PackageData> data;
  Links links;
  Meta meta;

  factory PackageModel.fromJson(Map<String, dynamic> json) => PackageModel(
    data: List<PackageData>.from(json["data"].map((x) => PackageData.fromJson(x))),
    links: Links.fromJson(json["links"]),
    meta: Meta.fromJson(json["meta"]),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "links": links.toJson(),
    "meta": meta.toJson(),
  };
}

class PackageData {
  PackageData({
    this.id,
    this.title,
    this.total,
    this.paymentMethod,
    this.paidAt,
    this.canRefund,
    this.financialText,
    this.orderId,
    this.type,
    this.status,
    this.usedSessionCount,
    this.sessionCount,
  });

  int id;
  String title;
  String total;
  String paymentMethod;
  DateTime paidAt;
  bool canRefund;
  String financialText;
  int orderId;
  String type;
  String status;
  int usedSessionCount;
  int sessionCount;

  factory PackageData.fromJson(Map<String, dynamic> json) => PackageData(
    id: json["id"],
    title: json["title"],
    total: json["total"],
    paymentMethod: json["payment_method"],
    paidAt: DateTime.parse(json["paid_at"]),
    canRefund: json["can_refund"],
    financialText: json["financial_text"],
    orderId: json["order_id"],
    type: json["type"],
    status: json["status"],
    usedSessionCount: json["used_session_count"],
    sessionCount: json["session_count"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "total": total,
    "payment_method": paymentMethod,
    "paid_at": paidAt.toIso8601String(),
    "can_refund": canRefund,
    "financial_text": financialText,
    "order_id": orderId,
    "type": type,
    "status": status,
    "used_session_count": usedSessionCount,
    "session_count": sessionCount,
  };
}

class Links {
  Links({
    this.first,
    this.last,
    this.prev,
    this.next,
  });

  String first;
  String last;
  dynamic prev;
  dynamic next;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    first: json["first"],
    last: json["last"],
    prev: json["prev"],
    next: json["next"],
  );

  Map<String, dynamic> toJson() => {
    "first": first,
    "last": last,
    "prev": prev,
    "next": next,
  };
}

class Meta {
  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.links,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  int currentPage;
  int from;
  int lastPage;
  List<Link> links;
  String path;
  int perPage;
  int to;
  int total;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    currentPage: json["current_page"],
    from: json["from"],
    lastPage: json["last_page"],
    links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
    path: json["path"],
    perPage: json["per_page"],
    to: json["to"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "current_page": currentPage,
    "from": from,
    "last_page": lastPage,
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
    "path": path,
    "per_page": perPage,
    "to": to,
    "total": total,
  };
}

class Link {
  Link({
    this.url,
    this.label,
    this.active,
  });

  String url;
  String label;
  bool active;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    url: json["url"] == null ? null : json["url"],
    label: json["label"],
    active: json["active"],
  );

  Map<String, dynamic> toJson() => {
    "url": url == null ? null : url,
    "label": label,
    "active": active,
  };
}
