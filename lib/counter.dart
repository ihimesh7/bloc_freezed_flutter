import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter.freezed.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState(int value) = _CounterState;
}
