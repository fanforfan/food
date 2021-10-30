import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/blocs/food/food_event.dart';
import 'package:food/blocs/food/food_state.dart';
import 'package:food/repositories/list_food_repo.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState>{
  final ListFoodRepo listFoodRepo;
  FoodBloc(this.listFoodRepo) : super(FoodInitial());

  @override
  Stream<FoodState> mapEventToState(FoodEvent event) async* {
    if(event is GetListFood){
      try {
        yield FoodLoading();
        final dataListFood = await listFoodRepo.fetchListFood();
        yield FoodLoaded(dataListFood);
      } catch (e) {
        print(e);
        yield FoodError(e.toString());
      }
    }
  }

}