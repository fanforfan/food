import 'package:equatable/equatable.dart';
import 'package:food/models/food_model.dart';

abstract class FoodDetailState extends Equatable{}

class FoodDetailInitial implements FoodDetailState{
  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => false;
}

class FoodDetailLoading implements FoodDetailState{
  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => false;
}

class FoodDetailLoaded implements FoodDetailState{
  final FoodModel foodModel;
  const FoodDetailLoaded(this.foodModel);

  @override
  List<Object?> get props => [foodModel];

  @override
  bool? get stringify => true;
}

class FoodDetailError implements FoodDetailState{
  final String message;
  const FoodDetailError(this.message);

  @override
  List<Object?> get props => [message];

  @override
  bool? get stringify => false;
}