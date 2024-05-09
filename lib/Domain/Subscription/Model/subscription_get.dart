// To parse this JSON data, do
//
//     final subscriptionGet = subscriptionGetFromJson(jsonString);

import 'dart:convert';

List<SubscriptionGet> subscriptionGetFromJson(String str) => List<SubscriptionGet>.from(json.decode(str).map((x) => SubscriptionGet.fromJson(x)));

String subscriptionGetToJson(List<SubscriptionGet> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SubscriptionGet {
    String? id;
    String? actualPrice;
    String? offerPrice;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? code;
    bool? isPublished;
    List<dynamic>? plans;
    String? coverImage;

    SubscriptionGet({
        this.id,
        this.actualPrice,
        this.offerPrice,
        this.createdAt,
        this.updatedAt,
        this.code,
        this.isPublished,
        this.plans,
        this.coverImage,
    });

    factory SubscriptionGet.fromJson(Map<String, dynamic> json) => SubscriptionGet(
        id: json["id"],
        actualPrice: json["actualPrice"],
        offerPrice: json["offerPrice"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        code: json["code"],
        isPublished: json["isPublished"],
        plans: json["plans"] == null ? [] : List<dynamic>.from(json["plans"]!.map((x) => x)),
        coverImage: json["coverImage"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "actualPrice": actualPrice,
        "offerPrice": offerPrice,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "code": code,
        "isPublished": isPublished,
        "plans": plans == null ? [] : List<dynamic>.from(plans!.map((x) => x)),
        "coverImage": coverImage,
    };
}
