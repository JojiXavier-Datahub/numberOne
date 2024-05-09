// To parse this JSON data, do
//
//     final videoGetModel = videoGetModelFromJson(jsonString);

import 'dart:convert';

List<VideoGetModel> videoGetModelFromJson(String str) =>
    List<VideoGetModel>.from(
        json.decode(str).map((x) => VideoGetModel.fromJson(x)));

String videoGetModelToJson(List<VideoGetModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class VideoGetModel {
  String? previewUrl;
  String? thumbnailUrl;
  String? downloadUrl;
  String? streamingUrl;

  VideoGetModel(
      {this.previewUrl,
      this.thumbnailUrl,
      this.downloadUrl,
      this.streamingUrl});

  factory VideoGetModel.fromJson(Map<String, dynamic> json) => VideoGetModel(
        streamingUrl: json["streamingUrl"],
        previewUrl: json["previewUrl"],
        thumbnailUrl: json["thumbnailUrl"],
        downloadUrl: json["downloadUrl"],
      );

  Map<String, dynamic> toJson() => {
        "streamingUrl": streamingUrl,
        "previewUrl": previewUrl,
        "thumbnailUrl": thumbnailUrl,
        "downloadUrl": downloadUrl,
      };
}
