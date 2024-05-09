// To parse this JSON data, do
//
//     final otpVerificationModel = otpVerificationModelFromJson(jsonString);

import 'dart:convert';

OtpVerificationModel otpVerificationModelFromJson(String str) => OtpVerificationModel.fromJson(json.decode(str));

String otpVerificationModelToJson(OtpVerificationModel data) => json.encode(data.toJson());

class OtpVerificationModel {
    bool? status;
    String? message;
    String? accessToken;
    String? refreshToken;

    OtpVerificationModel({
        this.status,
        this.message,
        this.accessToken,
        this.refreshToken,
    });

    factory OtpVerificationModel.fromJson(Map<String, dynamic> json) => OtpVerificationModel(
        status: json["status"],
        message: json["message"],
        accessToken: json["accessToken"],
        refreshToken: json["refreshToken"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "accessToken": accessToken,
        "refreshToken": refreshToken,
    };
}
