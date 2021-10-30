import 'package:equatable/equatable.dart';
import 'package:food/models/food_model.dart';

abstract class FoodState extends Equatable{}

class FoodInitial implements FoodState{
  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => false;
}

class FoodLoading implements FoodState{
  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => false;
}

class FoodLoaded implements FoodState{
  final FoodModel foodModel;
  const FoodLoaded(this.foodModel);

  @override
  List<Object?> get props => [foodModel];

  @override
  bool? get stringify => true;
}

class FoodError implements FoodState{
  final String message;
  const FoodError(this.message);

  @override
  List<Object?> get props => [message];

  @override
  bool? get stringify => false;
}