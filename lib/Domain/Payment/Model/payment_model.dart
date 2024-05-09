// To parse this JSON data, do
//
//     final paymentModel = paymentModelFromJson(jsonString);

import 'dart:convert';

PaymentModel paymentModelFromJson(String str) => PaymentModel.fromJson(json.decode(str));

String paymentModelToJson(PaymentModel data) => json.encode(data.toJson());

class PaymentModel {
    bool? status;
    String? message;
    String? paymentChannelRefId;

    PaymentModel({
        this.status,
        this.message,
        this.paymentChannelRefId,
    });

    factory PaymentModel.fromJson(Map<String, dynamic> json) => PaymentModel(
        status: json["status"],
        message: json["message"],
        paymentChannelRefId: json["paymentChannelRefId"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "paymentChannelRefId": paymentChannelRefId,
    };
}
