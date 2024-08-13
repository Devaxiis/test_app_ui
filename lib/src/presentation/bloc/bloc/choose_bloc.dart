import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_app_exam/src/data/fake_data.dart';

part 'choose_event.dart';
part 'choose_state.dart';

class ChooseBloc extends Bloc<ChooseEvent, ChooseState> {
  ChooseBloc() : super(ChooseInitial()) {
    on<ChooseCustomEvent>(_choosedAnswer);
  }

  void _choosedAnswer(ChooseCustomEvent event, Emitter emit) {
    emit(ChooseLoading());
    final data = TestData.firstTest;
    log("Bloc loading");
    log("Bloc ${event.chooseID}");
    log("Bloc ${event.index}");
    if (event.chooseID == data.data[event.index].correct) {
    log("Bloc Success");
      emit(ChooseSuccess(correctID: event.chooseID));
    } else {
    log("Bloc Failure");
      emit(ChooseFailure(correctID: event.chooseID,falseID: data.data[event.index].correct));
    }
    // emit(ChooseFailure());
  }
}
