// To parse this JSON data, do
//
//     final worss = worssFromJson(jsonString);

import 'dart:convert';

Worss worssFromJson(String str) => Worss.fromJson(json.decode(str));

String worssToJson(Worss data) => json.encode(data.toJson());

class Worss {
  Worss({
    required this.word,
    required this.pronunciation,
    required this.definitions,
  });

  String word;
  String pronunciation;
  List<Definition> definitions;

  factory Worss.fromJson(Map<String, dynamic> json) => Worss(
        word: json["word"],
        pronunciation: json["pronunciation"],
        definitions: List<Definition>.from(
            json["definitions"].map((x) => Definition.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "word": word,
        "pronunciation": pronunciation,
        "definitions": List<dynamic>.from(definitions.map((x) => x.toJson())),
      };
}

class Definition {
  Definition({
    required this.type,
    required this.definition,
    required this.example,
    required this.imageUrl,
    required this.emoji,
  });

  String type;
  String definition;
  String example;
  String imageUrl;
  String emoji;

  factory Definition.fromJson(Map<String, dynamic> json) => Definition(
        type: json["type"],
        definition: json["definition"],
        example: json["example"],
        imageUrl: json["image_url"],
        emoji: json["emoji"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "definition": definition,
        "example": example,
        "image_url": imageUrl,
        "emoji": emoji,
      };
}
