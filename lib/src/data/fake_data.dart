import 'package:test_app_exam/src/domain/models/all_test_model.dart';
import 'package:test_app_exam/src/domain/models/test_model.dart';

sealed class TestData {
  static MainTestModel firstTest = MainTestModel(
    id: 1, countTest: 10, data: [
     Question(id: "1", title: "O'zbekistonning poytaxti", options: {
      "Farg'ona":false,
      "Toshkent":true,
      "Buxoro":false,
      "Samarqand":false,
     }),
     Question(id: "2", title: "Farg'ona vodiysida nechta viloyat bor?", options: {
      "2":false,
      "1":false,
      "4":false,
      "3":true,
     }),
     Question(id: "3", title: "O'zbekistonning eng aholi zich yashaydigan viloyati qaysi?", options: {
      "Farg'ona":false,
      "Toshkent":false,
      "Andijon":true,
      "Samarqand":false,
     }),
     Question(id: "4", title: "Qoqon qaysi viloyatda joylashgan?", options: {
      "Farg'ona":true,
      "Toshkent":false,
      "Buxoro":false,
      "Samarqand":false,
     }),
     Question(id: "5", title: "O'zbekistonning eng katta viloyati qaysi?", options: {
      "Farg'ona":false,
      "Toshkent":false,
      "Buxoro":false,
      "Samarqand":true,
     }),
  ]);
}
