
import 'package:test_app_exam/library.dart';
import 'package:test_app_exam/src/domain/models/all_test_model.dart';
import 'package:test_app_exam/src/utils/app_style.dart';

class CardTestWg extends StatelessWidget {
  final int index;
  final AllTestModel data;
  const CardTestWg({super.key, required this.index, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuestionCardWg(question: data.questin,),
            const Text("Javoblar",style: AppStyle.appJavoblar,),
            JavobWg(
              jabovIndex: 0,
              javob: data.javobA,
              onTab: () {},
            ),
            JavobWg(
              jabovIndex: 1,
              javob: data.javobB,
              onTab: () {},
            ),
            JavobWg(
              jabovIndex: 2,
              javob: data.javobC,
              onTab: () {},
            ),
            JavobWg(
              jabovIndex: 3,
              javob: data.javobD,
              onTab: () {},
            ),
          ],
        ),
      ),
    );
  }
}
