import 'package:test_app_exam/library.dart';
import 'package:test_app_exam/src/domain/models/all_test_model.dart';
import 'package:test_app_exam/src/utils/app_style.dart';

class CardTestWg extends StatelessWidget {
  final int index;
  final Question data;
  const CardTestWg({super.key, required this.index, required this.data});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuestionCardWg(
              question: data.title,
            ),
            const Text(
              "Javoblar",
              style: AppStyle.appJavoblar,
            ),
            JavobWg(
              colorID: 0,
              jabovIndex: 1,
              javob: data.options.keys.toList()[0],
              onTab: () {
               
              },
            ),
            JavobWg(
              colorID: 0,
              jabovIndex: 2,
              javob: data.options.keys.toList()[1],
              onTab: () {
                
              },
            ),
            JavobWg(
              colorID: 0,
              jabovIndex: 3,
              javob: data.options.keys.toList()[2],
              onTab: () {
                
              },
            ),
            JavobWg(
              colorID: 0,
              jabovIndex: 4,
              javob: data.options.keys.toList()[3],
              onTab: () {
                
              },
            )
          ],
        ),
      ),
    );
  }
}
