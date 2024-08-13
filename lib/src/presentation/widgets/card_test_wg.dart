import 'package:test_app_exam/library.dart';
import 'package:test_app_exam/src/domain/models/all_test_model.dart';
import 'package:test_app_exam/src/utils/app_style.dart';

import '../bloc/bloc/choose_bloc.dart';

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
            QuestionCardWg(
              question: data.questin,
            ),
            const Text(
              "Javoblar",
              style: AppStyle.appJavoblar,
            ),
            BlocBuilder<ChooseBloc, ChooseState>(
              builder: (context, state) {
                int id = 0;
                if (state is ChooseInitial) {
                  id = 0;
                }
                if (state is ChooseSuccess) {
                  if (state.correctID == 1) {
                  id = 1;
                  }
                }
                if (state is ChooseFailure) {
                  if (state.falseID == 1) {
                    id = 2;
                  }
                  if (state.correctID == 1) {
                    id = 1;
                  }
                }
                return JavobWg(
                  colorID: id,
                  jabovIndex: 1,
                  javob: data.javobA,
                  onTab: () {
                    context
                        .read<ChooseBloc>()
                        .add(ChooseCustomEvent(chooseID: 1, index: index));
                  },
                );
              },
            ),
            BlocBuilder<ChooseBloc, ChooseState>(
              builder: (context, state) {
                int id = 0;
                if (state is ChooseInitial) {
                  id = 0;
                }
                if (state is ChooseSuccess ) {
                 if (state.correctID == 2) {
                  id = 1;
                  }
                }
                if (state is ChooseFailure) {
                  if (state.falseID == 2) {
                    id = 2;
                  }
                  if (state.correctID == 2) {
                    id = 1;
                  }
                }
                return JavobWg(
                  colorID: id,
                  jabovIndex: 2,
                  javob: data.javobB,
                  onTab: () {
                    context
                        .read<ChooseBloc>()
                        .add(ChooseCustomEvent(chooseID: 2, index: index));
                  },
                );
              },
            ),
            BlocBuilder<ChooseBloc, ChooseState>(
              builder: (context, state) {
                int id = 0;
                if (state is ChooseInitial) {
                  id = 0;
                }
                if (state is ChooseSuccess ) {
                  if (state.correctID == 3) {
                  id = 1;
                  }
                }
                if (state is ChooseFailure) {
                  if (state.falseID == 3) {
                    id = 2;
                  }
                  if (state.correctID == 3) {
                    id = 1;
                  }
                }
                return JavobWg(
                  colorID: id,
                  jabovIndex: 3,
                  javob: data.javobC,
                  onTab: () {
                    context
                        .read<ChooseBloc>()
                        .add(ChooseCustomEvent(chooseID: 3, index: index));
                  },
                );
              },
            ),
            BlocBuilder<ChooseBloc, ChooseState>(
              builder: (context, state) {
                int id = 0;
                if (state is ChooseInitial) {
                  id = 0;
                }
                if (state is ChooseSuccess) {
                  if (state.correctID == 4) {
                    id = 1;
                  }
                }
                if (state is ChooseFailure) {
                  if (state.falseID == 4) {
                    id = 2;
                  }
                  if (state.correctID == 4) {
                    id = 1;
                  }
                }
                return JavobWg(
                  colorID: id,
                  jabovIndex: 4,
                  javob: data.javobD,
                  onTab: () {
                    context
                        .read<ChooseBloc>()
                        .add(ChooseCustomEvent(chooseID: 4, index: index));
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
