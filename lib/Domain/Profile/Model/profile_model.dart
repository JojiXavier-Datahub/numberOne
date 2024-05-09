// To parse this JSON data, do
//
//     final profileeModel = profileeModelFromJson(jsonString);

import 'dart:convert';

ProfileeModel profileeModelFromJson(String str) => ProfileeModel.fromJson(json.decode(str));

String profileeModelToJson(ProfileeModel data) => json.encode(data.toJson());

class ProfileeModel {
    String? appLanguage;
    int? entrepreneurType;
    BusinessDetails? businessDetails;
    UserDetails? userDetails;
    String? businessTurnOver;
    String? courseLanguage;
    String? fullName;
    String? profileImage;
    double? latitude;
    double? longitude;
    String? location;
    String? phoneNumber;
    List<String>? interestedTopics;
    List<String>? selectedIndustry;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? id;

    ProfileeModel({
        this.appLanguage,
        this.entrepreneurType,
        this.businessDetails,
        this.userDetails,
        this.businessTurnOver,
        this.courseLanguage,
        this.fullName,
        this.profileImage,
        this.latitude,
        this.longitude,
        this.location,
        this.phoneNumber,
        this.interestedTopics,
        this.selectedIndustry,
        this.createdAt,
        this.updatedAt,
        this.id,
    });

    factory ProfileeModel.fromJson(Map<String, dynamic> json) => ProfileeModel(
        appLanguage: json["appLanguage"],
        entrepreneurType: json["entrepreneurType"],
        businessDetails: json["businessDetails"] == null ? null : BusinessDetails.fromJson(json["businessDetails"]),
        userDetails: json["userDetails"] == null ? null : UserDetails.fromJson(json["userDetails"]),
        businessTurnOver: json["businessTurnOver"],
        courseLanguage: json["courseLanguage"],
        fullName: json["fullName"],
        profileImage: json["profileImage"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        location: json["location"],
        phoneNumber: json["phoneNumber"],
        interestedTopics: json["interestedTopics"] == null ? [] : List<String>.from(json["interestedTopics"]!.map((x) => x)),
        selectedIndustry: json["selectedIndustry"] == null ? [] : List<String>.from(json["selectedIndustry"]!.map((x) => x)),
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "appLanguage": appLanguage,
        "entrepreneurType": entrepreneurType,
        "businessDetails": businessDetails?.toJson(),
        "userDetails": userDetails?.toJson(),
        "businessTurnOver": businessTurnOver,
        "courseLanguage": courseLanguage,
        "fullName": fullName,
        "profileImage": profileImage,
        "latitude": latitude,
        "longitude": longitude,
        "location": location,
        "phoneNumber": phoneNumber,
        "interestedTopics": interestedTopics == null ? [] : List<dynamic>.from(interestedTopics!.map((x) => x)),
        "selectedIndustry": selectedIndustry == null ? [] : List<dynamic>.from(selectedIndustry!.map((x) => x)),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "id": id,
    };
}

class BusinessDetails {
    String? city;
    String? state;
    String? pincode;
    String? address1;
    String? address2;
    String? gstNumber;
    String? companyName;

    BusinessDetails({
        this.city,
        this.state,
        this.pincode,
        this.address1,
        this.address2,
        this.gstNumber,
        this.companyName,
    });

    factory BusinessDetails.fromJson(Map<String, dynamic> json) => BusinessDetails(
        city: json["city"],
        state: json["state"],
        pincode: json["pincode"],
        address1: json["address1"],
        address2: json["address2"],
        gstNumber: json["gstNumber"],
        companyName: json["companyName"],
    );

    Map<String, dynamic> toJson() => {
        "city": city,
        "state": state,
        "pincode": pincode,
        "address1": address1,
        "address2": address2,
        "gstNumber": gstNumber,
        "companyName": companyName,
    };
}

class UserDetails {
    String? city;
    String? email;
    String? state;
    dynamic gender;
    String? pincode;
    dynamic address1;
    dynamic address2;
    dynamic dateOfBirth;

    UserDetails({
        this.city,
        this.email,
        this.state,
        this.gender,
        this.pincode,
        this.address1,
        this.address2,
        this.dateOfBirth,
    });

    factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
        city: json["city"],
        email: json["email"],
        state: json["state"],
        gender: json["gender"],
        pincode: json["pincode"],
        address1: json["address1"],
        address2: json["address2"],
        dateOfBirth: json["dateOfBirth"],
    );

    Map<String, dynamic> toJson() => {
        "city": city,
        "email": email,
        "state": state,
        "gender": gender,
        "pincode": pincode,
        "address1": address1,
        "address2": address2,
        "dateOfBirth": dateOfBirth,
    };
}
