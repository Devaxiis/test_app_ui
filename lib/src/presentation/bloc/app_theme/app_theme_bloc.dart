import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'app_theme_event.dart';
part 'app_theme_state.dart';

class AppThemeBloc extends Bloc<AppThemeEvent, AppThemeState> {
  AppThemeBloc() : super(AppThemeInitial()) {
    on<AppThemeCustomEvent>(_appTheme);
  }

  void _appTheme(AppThemeCustomEvent event, Emitter emit) async {
    emit(AppThemeLoading());
    emit(AppThemeSuccess(islight: event.isLight));
  }
}
