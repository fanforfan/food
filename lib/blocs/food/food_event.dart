import 'package:equatable/equatable.dart';

abstract class FoodEvent extends Equatable{}

class GetListFood implements FoodEvent{
  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => false;
}