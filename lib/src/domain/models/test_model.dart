import 'dart:convert';

import 'package:test_app_exam/src/domain/models/all_test_model.dart';

class MainTestModel {
  int id;
  int countTest;
  List<AllTestModel> data;

  MainTestModel({
    required this.id,
    required this.countTest,
    required this.data,
  });

  Map<String, dynamic> toMap() {
    return {"id": id, "countTest": countTest};
  }

  factory MainTestModel.fromJson(Map<String, Object?> json) {
    return MainTestModel(
      id: json['id'] as int,
      countTest: json['countTest'] as int,
      data: json['data'] as List<AllTestModel>,
    );
  }
}
