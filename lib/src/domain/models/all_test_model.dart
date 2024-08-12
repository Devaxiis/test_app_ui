class AllTestModel {
  String questin;
  String javobA;
  String javobB;
  String javobC;
  String javobD;
  int javoba;
  int javobb;
  int javobc;
  int javobd;
  int correct;

  AllTestModel({
    required this.questin,
    required this.javobA,
    required this.javobB,
    required this.javobC,
    required this.javobD,
    required this.javoba,
    required this.javobb,
    required this.javobc,
    required this.javobd,
    required this.correct,
  });

  Map<String, dynamic> toMap() {
    return {
      "questin": questin,
      "javobA": javobA,
      "javobB": javobB,
      "javobC": javobC,
      "javobD": javobD,
      "javobd": javobd,
      "javobc": javobc,
      "javobb": javobb,
      "javoba": javoba,
     "correct": correct};
  }

  factory AllTestModel.fromJson(Map<String, Object?> json) {
    return AllTestModel(
      questin: json['questin'] as String,
      javobA: json['javobA'] as String,
      javobB: json['javobB'] as String,
      javobC: json['javobC'] as String,
      javobD: json['javobD'] as String,
      javoba: json['javoba'] as int,
      javobb: json['javobb'] as int,
      javobc: json['javobc'] as int,
      javobd: json['javobd'] as int,
      correct: json['correct'] as int,
      
    );
  }
}
