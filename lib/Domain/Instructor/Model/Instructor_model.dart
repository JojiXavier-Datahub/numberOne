// To parse this JSON data, do
//
//     final instructorModel = instructorModelFromJson(jsonString);

import 'dart:convert';

List<InstructorModel> instructorModelFromJson(String str) => List<InstructorModel>.from(json.decode(str).map((x) => InstructorModel.fromJson(x)));

String instructorModelToJson(List<InstructorModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class InstructorModel {
    String? id;
    String? name;
    String? title;
    String? bio;
    String? profileImage;
    String? location;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? courseCount;
    int? rating;
    int? followers;
    List<dynamic>? languages;
    List<Tag>? tags;
    List<dynamic>? categories;

    InstructorModel({
        this.id,
        this.name,
        this.title,
        this.bio,
        this.profileImage,
        this.location,
        this.createdAt,
        this.updatedAt,
        this.courseCount,
        this.rating,
        this.followers,
        this.languages,
        this.tags,
        this.categories,
    });

    factory InstructorModel.fromJson(Map<String, dynamic> json) => InstructorModel(
        id: json["id"],
        name: json["name"],
        title: json["title"],
        bio: json["bio"],
        profileImage: json["profileImage"],
        location: json["location"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        courseCount: json["courseCount"],
        rating: json["rating"],
        followers: json["followers"],
        languages: json["languages"] == null ? [] : List<dynamic>.from(json["languages"]!.map((x) => x)),
        tags: json["tags"] == null ? [] : List<Tag>.from(json["tags"]!.map((x) => Tag.fromJson(x))),
        categories: json["categories"] == null ? [] : List<dynamic>.from(json["categories"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "title": title,
        "bio": bio,
        "profileImage": profileImage,
        "location": location,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "courseCount": courseCount,
        "rating": rating,
        "followers": followers,
        "languages": languages == null ? [] : List<dynamic>.from(languages!.map((x) => x)),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x.toJson())),
        "categories": categories == null ? [] : List<dynamic>.from(categories!.map((x) => x)),
    };
}

class Tag {
    String? id;
    String? name;
    String? code;

    Tag({
        this.id,
        this.name,
        this.code,
    });

    factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        id: json["id"],
        name: json["name"],
        code: json["code"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "code": code,
    };
}
