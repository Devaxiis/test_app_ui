part of 'choose_bloc.dart';

sealed class ChooseState extends Equatable {
  const ChooseState();
  
  @override
  List<Object> get props => [];
}

final class ChooseInitial extends ChooseState {}
