// To parse this JSON data, do
//
//     final courseList = courseListFromJson(jsonString);

import 'dart:convert';

CourseList courseListFromJson(String str) => CourseList.fromJson(json.decode(str));

String courseListToJson(CourseList data) => json.encode(data.toJson());

class CourseList {
    List<ListElement>? list;
    String? perPageCount;
    String? currentPage;
    int? totalPages;
    List<dynamic>? sortAttributes;
    List<dynamic>? sortOrders;

    CourseList({
        this.list,
        this.perPageCount,
        this.currentPage,
        this.totalPages,
        this.sortAttributes,
        this.sortOrders,
    });

    factory CourseList.fromJson(Map<String, dynamic> json) => CourseList(
        list: json["list"] == null ? [] : List<ListElement>.from(json["list"]!.map((x) => ListElement.fromJson(x))),
        perPageCount: json["perPageCount"],
        currentPage: json["currentPage"],
        totalPages: json["totalPages"],
        sortAttributes: json["sortAttributes"] == null ? [] : List<dynamic>.from(json["sortAttributes"]!.map((x) => x)),
        sortOrders: json["sortOrders"] == null ? [] : List<dynamic>.from(json["sortOrders"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "list": list == null ? [] : List<dynamic>.from(list!.map((x) => x.toJson())),
        "perPageCount": perPageCount,
        "currentPage": currentPage,
        "totalPages": totalPages,
        "sortAttributes": sortAttributes == null ? [] : List<dynamic>.from(sortAttributes!.map((x) => x)),
        "sortOrders": sortOrders == null ? [] : List<dynamic>.from(sortOrders!.map((x) => x)),
    };
}

class ListElement {
    String? id;
    int? courseDuration;
    String? courseTitle;
    String? courseTitleLocalized;
    String? courseDescription;
    String? courseDescriptionLocalized;
    String? courseSubscription;
    bool? isFreeCourse;
    int? regularPrice;
    String? currency;
    int? coursePrice;
        int? reviews;
            int? learners;


    bool? appliedDiscount;
    Discount? discount;
    bool? exemptPromoCodes;
    bool? enableGst;
    int? gst;
    String? courseCoverImage;
    String? courseLanguage;
    DateTime? createdAt;
    DateTime? updatedAt;
    bool? isPublished;
    List<CourseInstructor>? courseInstructors;
    List<Category>? categories;
    dynamic courseRating;
    int? totalRatingsCount;

    ListElement({
        this.id,
        this.courseDuration,
        this.courseTitle,
        this.courseTitleLocalized,
        this.courseDescription,
        this.courseDescriptionLocalized,
        this.courseSubscription,
        this.isFreeCourse,
        this.regularPrice,
        this.currency,
        this.coursePrice,
        this.appliedDiscount,
        this.discount,
        this.exemptPromoCodes,
        this.enableGst,
        this.gst,
        this.courseCoverImage,
        this.courseLanguage,
        this.createdAt,
        this.updatedAt,
        this.isPublished,
        this.courseInstructors,
        this.categories,
        this.courseRating,
        this.totalRatingsCount,
        this.reviews,
        this.learners,
    });

    factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
      reviews: json["reviews"],
        learners: json["learners"],
        id: json["id"],
        courseDuration: json["courseDuration"],
        courseTitle: json["courseTitle"],
        courseTitleLocalized: json["courseTitleLocalized"],
        courseDescription: json["courseDescription"],
        courseDescriptionLocalized: json["courseDescriptionLocalized"],
        courseSubscription: json["courseSubscription"],
        isFreeCourse: json["isFreeCourse"],
        regularPrice: json["regularPrice"],
        currency: json["currency"],
        coursePrice: json["coursePrice"],
        appliedDiscount: json["appliedDiscount"],
        discount: json["discount"] == null ? null : Discount.fromJson(json["discount"]),
        exemptPromoCodes: json["exemptPromoCodes"],
        enableGst: json["enableGST"],
        gst: json["GST"],
        courseCoverImage: json["courseCoverImage"],
        courseLanguage: json["courseLanguage"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        isPublished: json["isPublished"],
        courseInstructors: json["courseInstructors"] == null ? [] : List<CourseInstructor>.from(json["courseInstructors"]!.map((x) => CourseInstructor.fromJson(x))),
        categories: json["categories"] == null ? [] : List<Category>.from(json["categories"]!.map((x) => Category.fromJson(x))),
        courseRating: json["courseRating"],
        totalRatingsCount: json["totalRatingsCount"],
    );

    Map<String, dynamic> toJson() => {
      "reviews": reviews,
        "learners": learners,
        "id": id,
        "courseDuration": courseDuration,
        "courseTitle": courseTitle,
        "courseTitleLocalized": courseTitleLocalized,
        "courseDescription": courseDescription,
        "courseDescriptionLocalized": courseDescriptionLocalized,
        "courseSubscription": courseSubscription,
        "isFreeCourse": isFreeCourse,
        "regularPrice": regularPrice,
        "currency": currency,
        "coursePrice": coursePrice,
        "appliedDiscount": appliedDiscount,
        "discount": discount?.toJson(),
        "exemptPromoCodes": exemptPromoCodes,
        "enableGST": enableGst,
        "GST": gst,
        "courseCoverImage": courseCoverImage,
        "courseLanguage": courseLanguage,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "isPublished": isPublished,
        "courseInstructors": courseInstructors == null ? [] : List<dynamic>.from(courseInstructors!.map((x) => x.toJson())),
        "categories": categories == null ? [] : List<dynamic>.from(categories!.map((x) => x.toJson())),
        "courseRating": courseRating,
        "totalRatingsCount": totalRatingsCount,
    };
}

class Category {
    String? id;
    String? name;
    String? code;

    Category({
        this.id,
        this.name,
        this.code,
    });

    factory Category.fromJson(Map<String, dynamic> json) => Category(
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

class CourseInstructor {
    String? id;
    String? name;
    String? profileImage;
    String? bio;

    CourseInstructor({
        this.id,
        this.name,
        this.profileImage,
        this.bio,
    });

    factory CourseInstructor.fromJson(Map<String, dynamic> json) => CourseInstructor(
        id: json["id"],
        name: json["name"],
        profileImage: json["profileImage"],
        bio: json["bio"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "profileImage": profileImage,
        "bio": bio,
    };
}

class Discount {
    Discount();

    factory Discount.fromJson(Map<String, dynamic> json) => Discount(
    );

    Map<String, dynamic> toJson() => {
    };
}
