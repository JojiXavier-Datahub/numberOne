// To parse this JSON data, do
//
//     final courseGet = courseGetFromJson(jsonString);

import 'dart:convert';

CourseGet courseGetFromJson(String str) => CourseGet.fromJson(json.decode(str));

String courseGetToJson(CourseGet data) => json.encode(data.toJson());

class CourseGet {
  int? courseRating;
  int? totalRatingsCount;
  int? courseDuration;
  String? courseTitle;
  String? courseTitleLocalized;
  String? courseDescription;
  String? courseDescriptionLocalized;
  CourseSubscription? courseSubscription;
  List<CourseInstructor>? courseInstructors;
  List<Category>? categories;
  List<Category>? tags;
  bool? isFreeCourse;
  int? regularPrice;
  String? currency;
  int? coursePrice;
  bool? appliedDiscount;
  Discount? discount;
  bool? exemptPromoCodes;
  bool? enableGst;
  int? gst;
  List<Highlight>? highlights;
  List<Chapter>? chapters;
  String? courseCoverImage;
  String? courseLanguage;

  CourseGet({
    this.courseRating,
    this.totalRatingsCount,
    this.courseDuration,
    this.courseTitle,
    this.courseTitleLocalized,
    this.courseDescription,
    this.courseDescriptionLocalized,
    this.courseSubscription,
    this.courseInstructors,
    this.categories,
    this.tags,
    this.isFreeCourse,
    this.regularPrice,
    this.currency,
    this.coursePrice,
    this.appliedDiscount,
    this.discount,
    this.exemptPromoCodes,
    this.enableGst,
    this.gst,
    this.highlights,
    this.chapters,
    this.courseCoverImage,
    this.courseLanguage,
  });

  factory CourseGet.fromJson(Map<String, dynamic> json) => CourseGet(
        courseRating: json["courseRating"],
        totalRatingsCount: json["totalRatingsCount"],
        courseDuration: json["courseDuration"],
        courseTitle: json["courseTitle"],
        courseTitleLocalized: json["courseTitleLocalized"],
        courseDescription: json["courseDescription"],
        courseDescriptionLocalized: json["courseDescriptionLocalized"],
        courseSubscription: json["courseSubscription"] == null
            ? null
            : CourseSubscription.fromJson(json["courseSubscription"]),
        courseInstructors: json["courseInstructors"] == null
            ? []
            : List<CourseInstructor>.from(json["courseInstructors"]!
                .map((x) => CourseInstructor.fromJson(x))),
        categories: json["categories"] == null
            ? []
            : List<Category>.from(
                json["categories"]!.map((x) => Category.fromJson(x))),
        tags: json["tags"] == null
            ? []
            : List<Category>.from(
                json["tags"]!.map((x) => Category.fromJson(x))),
        isFreeCourse: json["isFreeCourse"],
        regularPrice: json["regularPrice"],
        currency: json["currency"],
        coursePrice: json["coursePrice"],
        appliedDiscount: json["appliedDiscount"],
        discount: json["discount"] == null
            ? null
            : Discount.fromJson(json["discount"]),
        exemptPromoCodes: json["exemptPromoCodes"],
        enableGst: json["enableGST"],
        gst: json["GST"],
        highlights: json["highlights"] == null
            ? []
            : List<Highlight>.from(
                json["highlights"]!.map((x) => Highlight.fromJson(x))),
        chapters: json["chapters"] == null
            ? []
            : List<Chapter>.from(
                json["chapters"]!.map((x) => Chapter.fromJson(x))),
        courseCoverImage: json["courseCoverImage"],
        courseLanguage: json["courseLanguage"],
      );

  Map<String, dynamic> toJson() => {
        "courseRating": courseRating,
        "totalRatingsCount": totalRatingsCount,
        "courseDuration": courseDuration,
        "courseTitle": courseTitle,
        "courseTitleLocalized": courseTitleLocalized,
        "courseDescription": courseDescription,
        "courseDescriptionLocalized": courseDescriptionLocalized,
        "courseSubscription": courseSubscription?.toJson(),
        "courseInstructors": courseInstructors == null
            ? []
            : List<dynamic>.from(courseInstructors!.map((x) => x.toJson())),
        "categories": categories == null
            ? []
            : List<dynamic>.from(categories!.map((x) => x.toJson())),
        "tags": tags == null
            ? []
            : List<dynamic>.from(tags!.map((x) => x.toJson())),
        "isFreeCourse": isFreeCourse,
        "regularPrice": regularPrice,
        "currency": currency,
        "coursePrice": coursePrice,
        "appliedDiscount": appliedDiscount,
        "discount": discount?.toJson(),
        "exemptPromoCodes": exemptPromoCodes,
        "enableGST": enableGst,
        "GST": gst,
        "highlights": highlights == null
            ? []
            : List<dynamic>.from(highlights!.map((x) => x.toJson())),
        "chapters": chapters == null
            ? []
            : List<dynamic>.from(chapters!.map((x) => x.toJson())),
        "courseCoverImage": courseCoverImage,
        "courseLanguage": courseLanguage,
      };
}

class Category {
  String? name;
  String? code;

  Category({
    this.name,
    this.code,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        name: json["name"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "code": code,
      };
}

class Chapter {
  String? chapterTitle;
  String? chapterTitleLocalized;
  String? chapterDescription;
  String? chapterDescriptionLocalized;
  List<Attachment>? attachments;
  bool? isPreview;
  int? lessonOrderNumber;
  String? publitioVideoId;

  Chapter({
    this.chapterTitle,
    this.chapterTitleLocalized,
    this.chapterDescription,
    this.chapterDescriptionLocalized,
    this.attachments,
    this.isPreview,
    this.lessonOrderNumber,
    this.publitioVideoId,
  });

  factory Chapter.fromJson(Map<String, dynamic> json) => Chapter(
        chapterTitle: json["chapterTitle"],
        chapterTitleLocalized: json["chapterTitleLocalized"],
        chapterDescription: json["chapterDescription"],
        chapterDescriptionLocalized: json["chapterDescriptionLocalized"],
        attachments: json["attachments"] == null
            ? []
            : List<Attachment>.from(
                json["attachments"]!.map((x) => Attachment.fromJson(x))),
        isPreview: json["isPreview"],
        lessonOrderNumber: json["lessonOrderNumber"],
        publitioVideoId: json["publitioVideoId"],
      );

  Map<String, dynamic> toJson() => {
        "chapterTitle": chapterTitle,
        "chapterTitleLocalized": chapterTitleLocalized,
        "chapterDescription": chapterDescription,
        "chapterDescriptionLocalized": chapterDescriptionLocalized,
        "attachments": attachments == null
            ? []
            : List<dynamic>.from(attachments!.map((x) => x.toJson())),
        "isPreview": isPreview,
        "lessonOrderNumber": lessonOrderNumber,
        "publitioVideoId": publitioVideoId,
      };
}

class Attachment {
  String? label;
  String? url;

  Attachment({
    this.label,
    this.url,
  });

  factory Attachment.fromJson(Map<String, dynamic> json) => Attachment(
        label: json["label"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "url": url,
      };
}

class CourseInstructor {
  String? id;
  String? name;
  String? profileImage;
  String? title;

  CourseInstructor({
    this.id,
    this.name,
    this.profileImage,
    this.title,
  });

  factory CourseInstructor.fromJson(Map<String, dynamic> json) =>
      CourseInstructor(
        id: json["id"],
        name: json["name"],
        profileImage: json["profileImage"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "profileImage": profileImage,
        "title": title,
      };
}

class CourseSubscription {
  String? id;
  String? code;
  String? actualPrice;
  String? offerPrice;
  String? coverImage;
  List<Plan>? plans;

  CourseSubscription({
    this.id,
    this.code,
    this.actualPrice,
    this.offerPrice,
    this.coverImage,
    this.plans,
  });

  factory CourseSubscription.fromJson(Map<String, dynamic> json) =>
      CourseSubscription(
        id: json["id"],
        code: json["code"],
        actualPrice: json["actualPrice"],
        offerPrice: json["offerPrice"],
        coverImage: json["coverImage"],
        plans: json["plans"] == null
            ? []
            : List<Plan>.from(json["plans"]!.map((x) => Plan.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "actualPrice": actualPrice,
        "offerPrice": offerPrice,
        "coverImage": coverImage,
        "plans": plans == null
            ? []
            : List<dynamic>.from(plans!.map((x) => x.toJson())),
      };
}

class Plan {
  String? language;
  String? planName;
  String? firstHighlightTitle;
  String? firstHighlightDescription;
  String? secondHighlightTitle;
  String? secondHighlightDescription;

  Plan({
    this.language,
    this.planName,
    this.firstHighlightTitle,
    this.firstHighlightDescription,
    this.secondHighlightTitle,
    this.secondHighlightDescription,
  });

  factory Plan.fromJson(Map<String, dynamic> json) => Plan(
        language: json["language"],
        planName: json["planName"],
        firstHighlightTitle: json["firstHighlightTitle"],
        firstHighlightDescription: json["firstHighlightDescription"],
        secondHighlightTitle: json["secondHighlightTitle"],
        secondHighlightDescription: json["secondHighlightDescription"],
      );

  Map<String, dynamic> toJson() => {
        "language": language,
        "planName": planName,
        "firstHighlightTitle": firstHighlightTitle,
        "firstHighlightDescription": firstHighlightDescription,
        "secondHighlightTitle": secondHighlightTitle,
        "secondHighlightDescription": secondHighlightDescription,
      };
}

class Discount {
  dynamic percentage;
  String? from;
  String? to;

  Discount({
    this.percentage,
    this.from,
    this.to,
  });

  factory Discount.fromJson(Map<String, dynamic> json) => Discount(
        percentage: json["percentage"],
        from: json["from"],
        to: json["to"],
      );

  Map<String, dynamic> toJson() => {
        "percentage": percentage,
        "from": from,
        "to": to,
      };
}

class From {
  From();

  factory From.fromJson(Map<String, dynamic> json) => From();

  Map<String, dynamic> toJson() => {};
}

class Highlight {
  String? title;
  String? titleLocalized;
  String? description;
  String? descriptionLocalized;
  String? imageUrl;

  Highlight({
    this.title,
    this.titleLocalized,
    this.description,
    this.descriptionLocalized,
    this.imageUrl,
  });

  factory Highlight.fromJson(Map<String, dynamic> json) => Highlight(
        title: json["title"],
        titleLocalized: json["titleLocalized"],
        description: json["description"],
        descriptionLocalized: json["descriptionLocalized"],
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "titleLocalized": titleLocalized,
        "description": description,
        "descriptionLocalized": descriptionLocalized,
        "imageUrl": imageUrl,
      };
}
