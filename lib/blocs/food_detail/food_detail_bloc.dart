import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/blocs/food_detail/food_detail_event.dart';
import 'package:food/blocs/food_detail/food_detail_state.dart';
import 'package:food/repositories/list_food_repo.dart';

class FoodDetailBloc extends Bloc<FoodDetailEvent, FoodDetailState>{
  final ListFoodRepo listFoodRepo;
  FoodDetailBloc(this.listFoodRepo) : super(FoodDetailInitial());

  @override
  Stream<FoodDetailState> mapEventToState(FoodDetailEvent event) async* {
    if(event is GetFoodDetail){
      try {
        yield FoodDetailLoading();
        final dataFoodDetail = await listFoodRepo.fetchDetailFood();
        yield FoodDetailLoaded(dataFoodDetail);
      } catch (e) {
        print(e);
        yield FoodDetailError(e.toString());
      }
    }
  }
}