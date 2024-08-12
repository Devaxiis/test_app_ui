import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'choose_event.dart';
part 'choose_state.dart';

class ChooseBloc extends Bloc<ChooseEvent, ChooseState> {
  ChooseBloc() : super(ChooseInitial()) {
    on<ChooseEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
