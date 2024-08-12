part of 'app_theme_bloc.dart';

sealed class AppThemeEvent extends Equatable {
  const AppThemeEvent();

  @override
  List<Object> get props => [];
}

class AppThemeCustomEvent extends AppThemeEvent {
  final bool isLight;
  const AppThemeCustomEvent({required this.isLight});
}
