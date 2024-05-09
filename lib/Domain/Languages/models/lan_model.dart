import 'dart:convert';

List<LanguageModel> languageModelFromJson(String str) =>
    List<LanguageModel>.from(json.decode(str).map((x) => LanguageModel.fromJson(x)));

String languageModelToJson(List<LanguageModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LanguageModel {
  String? id;
  String? code;
  String? name;

  LanguageModel({
    this.id,
    this.code,
    this.name,
  });

  factory LanguageModel.fromJson(Map<String, dynamic> json) => LanguageModel(
        id: json["id"],
        code: json["code"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "name": name,
      };
}


