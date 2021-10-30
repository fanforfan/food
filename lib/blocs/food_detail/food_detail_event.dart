import 'package:equatable/equatable.dart';

abstract class FoodDetailEvent extends Equatable{}

class GetFoodDetail implements FoodDetailEvent{

  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => false;

}