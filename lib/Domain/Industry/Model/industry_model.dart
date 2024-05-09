// To parse this JSON data, do
//
//     final industryModel = industryModelFromJson(jsonString);

import 'dart:convert';

List<IndustryModel> industryModelFromJson(String str) => List<IndustryModel>.from(json.decode(str).map((x) => IndustryModel.fromJson(x)));

String industryModelToJson(List<IndustryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class IndustryModel {
    String? id;
    String? name;
    int? entrepreneurType;

    IndustryModel({
        this.id,
        this.name,
        this.entrepreneurType,
    });

    factory IndustryModel.fromJson(Map<String, dynamic> json) => IndustryModel(
        id: json["id"],
        name: json["name"],
        entrepreneurType: json["entrepreneurType"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "entrepreneurType": entrepreneurType,
    };
}
