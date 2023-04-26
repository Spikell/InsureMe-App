// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.age,
    required this.bloodPressure,
    required this.bmi,
    required this.children,
    required this.chronicDisease,
    required this.diabetes,
    required this.inrRes,
    required this.knownAllergies,
    required this.majorSurgeries,
    required this.sex,
    required this.smoker,
  });

  final int age;
  final int bloodPressure;
  final int bmi;
  final int children;
  final int chronicDisease;
  final int diabetes;
  final int inrRes;
  final int knownAllergies;
  final int majorSurgeries;
  final String sex;
  final String smoker;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    age: json["age"],
    bloodPressure: json["blood_pressure"],
    bmi: json["bmi"],
    children: json["children"],
    chronicDisease: json["chronic_disease"],
    diabetes: json["diabetes"],
    inrRes: json["inr_res"],
    knownAllergies: json["known_allergies"],
    majorSurgeries: json["major_surgeries"],
    sex: json["sex"],
    smoker: json["smoker"],
  );

  Map<String, dynamic> toJson() => {
    "age": age,
    "blood_pressure": bloodPressure,
    "bmi": bmi,
    "children": children,
    "chronic_disease": chronicDisease,
    "diabetes": diabetes,
    "inr_res": inrRes,
    "known_allergies": knownAllergies,
    "major_surgeries": majorSurgeries,
    "sex": sex,
    "smoker": smoker,
  };
}
