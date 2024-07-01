import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int value; //This is called field or property of the class
  const CounterState({this.value = 0});
  CounterState copyWith({int? value}) {
    return CounterState(value: value ?? this.value);
    // If the Value values is null then this.value is shown by default
  }

  @override
  // TODO: implement props
  List<Object?> get props => [value];
}
