// To parse this JSON data, do
//
//     final coupenModel = coupenModelFromJson(jsonString);

import 'dart:convert';

CoupenModel coupenModelFromJson(String str) => CoupenModel.fromJson(json.decode(str));

String coupenModelToJson(CoupenModel data) => json.encode(data.toJson());

class CoupenModel {
    bool? status;
    String? message;
    int? productAmount;
    int? discountedAmount;
    String? couponDiscountType;
    int? couponDiscountValue;

    CoupenModel({
        this.status,
        this.message,
        this.productAmount,
        this.discountedAmount,
        this.couponDiscountType,
        this.couponDiscountValue,
    });

    factory CoupenModel.fromJson(Map<String, dynamic> json) => CoupenModel(
        status: json["status"],
        message: json["message"],
        productAmount: json["productAmount"],
        discountedAmount: json["discountedAmount"],
        couponDiscountType: json["couponDiscountType"],
        couponDiscountValue: json["couponDiscountValue"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "productAmount": productAmount,
        "discountedAmount": discountedAmount,
        "couponDiscountType": couponDiscountType,
        "couponDiscountValue": couponDiscountValue,
    };
}
