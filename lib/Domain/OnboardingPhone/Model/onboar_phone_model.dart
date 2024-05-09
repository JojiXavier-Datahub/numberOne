// To parse this JSON data, do
//
//     final onboardingPhoneModel = onboardingPhoneModelFromJson(jsonString);

import 'dart:convert';

OnboardingPhoneModel onboardingPhoneModelFromJson(String str) => OnboardingPhoneModel.fromJson(json.decode(str));

String onboardingPhoneModelToJson(OnboardingPhoneModel data) => json.encode(data.toJson());

class OnboardingPhoneModel {
    bool? status;
    String? message;

    OnboardingPhoneModel({
        this.status,
        this.message,
    });

    factory OnboardingPhoneModel.fromJson(Map<String, dynamic> json) => OnboardingPhoneModel(
        status: json["status"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
    };
}
