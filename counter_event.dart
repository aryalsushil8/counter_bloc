import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();
  @override
  List<Object> get props => [];
}

class AddCounter extends CounterEvent {}

class RemoveCounter extends CounterEvent {}
