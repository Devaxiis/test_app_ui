import 'package:test_app_exam/src/domain/models/all_test_model.dart';
import 'package:test_app_exam/src/domain/models/test_model.dart';

sealed class TestData {
  static MainTestModel firstTest = MainTestModel(id: 1, countTest: 10, data: [
    AllTestModel(
        questin: 'Agar mijos sotib olgan sovutgichda muammo chiqsa...?',
        javobA: 'Servis markaziga olib boradi.',
        javobB: 'Servis markazi mijozni uyiga keladi va xizmat pullik bolad.',
        javobC: 'Servis markazi mijozni uyiga keladi va xizmat bepul faqat zavot tomonidan nosozlik aniqlansa.',
        javobD: 'Barcha javoblar tog\'ri.',
        javoba: 1,
        javobb: 2,
        javobc: 3,
        javobd: 4,
        correct: 3),
    AllTestModel(
        questin: 'Ismingizni ayting...?',
        javobA: 'Yoq.',
        javobB: 'Mayli.',
        javobC: 'Mumkin emas.',
        javobD: 'Barcha javoblar tog\'ri.',
        javoba: 1,
        javobb: 2,
        javobc: 3,
        javobd: 4,
        correct: 2),
    AllTestModel(
        questin: 'Salom...?',
        javobA: 'Salom.',
        javobB: 'Hello.',
        javobC: 'Bye.',
        javobD: 'Good.',
        javoba: 1,
        javobb: 2,
        javobc: 3,
        javobd: 4,
        correct: 1),
    AllTestModel(
        questin: 'Agar mijos sotib olgan sovutgichda muammo chiqsa...?',
        javobA: 'Servis markaziga olib boradi.',
        javobB: 'Servis markazi mijozni uyiga keladi va xizmat pullik bolad.',
        javobC: 'Servis markazi mijozni uyiga keladi va xizmat bepul faqat zavot tomonidan nosozlik aniqlansa.',
        javobD: 'Barcha javoblar tog\'ri.',
        javoba: 1,
        javobb: 2,
        javobc: 3,
        javobd: 4,
        correct: 4),
    AllTestModel(
        questin: 'Agar mijos sotib olgan sovutgichda muammo chiqsa...?',
        javobA: 'Servis markaziga olib boradi.',
        javobB: 'Servis markazi mijozni uyiga keladi va xizmat pullik bolad.',
        javobC: 'Servis markazi mijozni uyiga keladi va xizmat bepul faqat zavot tomonidan nosozlik aniqlansa.',
        javobD: 'Barcha javoblar tog\'ri.',
        javoba: 1,
        javobb: 2,
        javobc: 3,
        javobd: 4,
        correct: 2),
    AllTestModel(
        questin: 'Good morning...?',
        javobA: 'Xayirli tong.',
        javobB: 'Xayirli kun.',
        javobC: 'Xayirli kech.',
        javobD: 'Xayirli tun.',
        javoba: 1,
        javobb: 2,
        javobc: 3,
        javobd: 4,
        correct: 1),
    AllTestModel(
        questin: 'Agar mijos  chiqsa...?',
        javobA: 'Servis markaziga olib boradi.',
        javobB: 'Servis pullik bolad.',
        javobC: 'Servis markazi mijozni uyiga keladi va xizmat bepul faqat zavot tomonidan nosozlik aniqlansa.',
        javobD: 'Barcha javoblar tog\'ri.',
        javoba: 1,
        javobb: 2,
        javobc: 3,
        javobd: 4,
        correct: 1),
    AllTestModel(
        questin: 'Agar muammo chiqsa...?',
        javobA: 'Servis markaziga olib boradi.',
        javobB: 'Servis keladi va xizmat pullik bolad.',
        javobC: 'Servis  xizmat bepul faqat zavot tomonidan nosozlik aniqlansa.',
        javobD: 'Barcha javoblar tog\'ri.',
        javoba: 1,
        javobb: 2,
        javobc: 3,
        javobd: 4,
        correct: 3),
    AllTestModel(
        questin: 'Agar mijos sotib olgan sovutgichda ...?',
        javobA: 'Servis markaziga olib boradi.',
        javobB: 'Servis markazi mijozni uyiga keladi va xizmat pullik bolad.',
        javobC: 'Servis  faqat zavot tomonidan nosozlik aniqlansa.',
        javobD: 'Barcha javoblar tog\'ri.',
        javoba: 1,
        javobb: 2,
        javobc: 3,
        javobd: 4,
        correct: 4),
    AllTestModel(
        questin: 'Agar mijos sotib olgan sovutgichda muammo chiqsa...?',
        javobA: 'Servis markaziga olib boradi.',
        javobB: 'Servis markazi mijozni ',
        javobC: 'Servis markazi  zavot tomonidan nosozlik aniqlansa.',
        javobD: 'Barcha javoblar tog\'ri.',
        javoba: 1,
        javobb: 2,
        javobc: 3,
        javobd: 4,
        correct: 4),
  ]);
}