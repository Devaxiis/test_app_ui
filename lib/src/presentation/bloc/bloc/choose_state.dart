part of 'choose_bloc.dart';

sealed class ChooseState extends Equatable {
  const ChooseState();

  @override
  List<Object> get props => [];
}

final class ChooseInitial extends ChooseState {}

final class ChooseSuccess extends ChooseState {
  int correctID;
  ChooseSuccess({required this.correctID});
}

final class ChooseFailure extends ChooseState {
  int correctID;
  int falseID;
  ChooseFailure({required this.correctID,required this.falseID});
}

final class ChooseLoading extends ChooseState {}
