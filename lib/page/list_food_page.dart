import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/blocs/food/food_bloc.dart';
import 'package:food/blocs/food/food_state.dart';
import 'package:food/blocs/food/food_event.dart';
import 'package:food/models/food_model.dart';
import 'package:food/repositories/list_food_repo.dart';

import 'food_detail.dart';

class ListFoodPage extends StatefulWidget {
  const ListFoodPage({Key? key}) : super(key: key);

  @override
  _ListFoodPageState createState() => _ListFoodPageState();
}

class _ListFoodPageState extends State<ListFoodPage> {
  late FoodBloc _foodBloc;

  @override
  void initState() {
    _foodBloc = FoodBloc(ListFoodRepo(""));
    _fetchListFood();
    super.initState();
  }

  void _fetchListFood() {
    _foodBloc.add(GetListFood());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: BlocProvider(
        create: (_) => _foodBloc,
        child: BlocListener<FoodBloc, FoodState>(
          listener: (context, state){
            if(state is FoodError){
              print("ERROR ${state.message}");
            }else if(state is FoodLoaded){
              print("Data Sampai VIEW ${state.foodModel.meals}");
            }
          },
          child: BlocBuilder<FoodBloc, FoodState>(
            builder: (context, state){
              if(state is FoodInitial){
                return _buildLoading();
              }else if(state is FoodLoading){
                return _buildLoading();
              }else if(state is FoodLoaded){
                return _buildCard(context, state.foodModel);
              }else if(state is FoodError){
                return Container(
                  child: Center(
                    child: Text("${state.message}"),
                  ),
                );
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }

  Widget _buildLoading() => Center(child: CircularProgressIndicator());

  Widget _buildCard(BuildContext context, FoodModel foodModel) {
    return ListView.builder(
      itemCount: foodModel.meals!.length,
      itemBuilder: (context, index){
        var id_meal           = foodModel.meals![index].idMeal;
        var str_meal          = foodModel.meals![index].strMeal;
        var str_meal_thumb    = foodModel.meals![index].strMealThumb;
        var str_category      = foodModel.meals![index].strCategory;
        var str_area          = foodModel.meals![index].strArea;
        var str_instructions  = potongString(foodModel.meals![index].strInstructions);

        return _createItemFood(
            id_meal,
            str_meal,
            str_meal_thumb,
            str_category,
            str_area,
            str_instructions
        );
      },
    );
  }

  String potongString(String text, { length: 110, omission: '...' }) {
    if (length >= text.length) {
      return text;
    }
    return text.replaceRange(length, text.length, omission);
  }

  Widget _createItemFood(String? id_meal, String? str_meal, String? str_meal_thumb, String str_category, String str_area, String str_instructions) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDetail(id_Meal: "${id_meal}", str_meal: "${str_meal}",)));
      },
      child: Padding(
        padding: EdgeInsets.only(top: 13, left: 20, right: 20),
        child: Card(
          elevation: 0.5,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Container(
                    child: FadeInImage.assetNetwork(
                        placeholder: 'assets/placeholderimage.gif',
                        image: str_meal_thumb!
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 5, right: 5)),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.only(top: 10, left: 10),
                          child: Text(str_meal!, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black54),),
                        )
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.only(top: 6, left: 10),
                        child: Row(
                          children: [
                            Text(str_area, style: TextStyle(fontSize: 12, color: Colors.black38),),
                            Padding(
                              padding: EdgeInsets.only(left: 5, right: 5),
                              child: Text("|", style: TextStyle(color: Colors.black38),),
                            ),
                            Text(str_category, style: TextStyle(fontSize: 12, color: Colors.black38),),
                          ],
                        ),
                      ),
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.only(top: 10, left: 10),
                          child: Text(str_instructions, style: TextStyle(fontSize: 13, color: Colors.black54),),
                        )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}


