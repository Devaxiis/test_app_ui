part of 'app_theme_bloc.dart';

sealed class AppThemeState extends Equatable {
  const AppThemeState();

  @override
  List<Object> get props => [];
}

final class AppThemeInitial extends AppThemeState {}

final class AppThemeSuccess extends AppThemeState {
  final bool islight;
  const AppThemeSuccess({required this.islight});
}

final class AppThemeFailure extends AppThemeState {}

final class AppThemeLoading extends AppThemeState {}
