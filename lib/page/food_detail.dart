import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/blocs/food_detail/food_detail_bloc.dart';
import 'package:food/blocs/food_detail/food_detail_event.dart';
import 'package:food/blocs/food_detail/food_detail_state.dart';
import 'package:food/db/food_database.dart';
import 'package:food/models/food_model.dart';
import 'package:food/repositories/list_food_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FoodDetail extends StatefulWidget {
  final String id_Meal;
  final String str_meal;
  const FoodDetail({Key? key, required this.id_Meal, required this.str_meal})
      : super(key: key);

  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  late FoodDetailBloc _foodDetailBloc;

  late bool _option;
  late String _str_button;
  late Color _colorsFav;

  late SharedPreferences prefs;

  @override
  void initState() {
    _foodDetailBloc = FoodDetailBloc(ListFoodRepo(widget.id_Meal));
    _fetchFoodDetail();
    _option = true;
    _str_button = "Ingredient";
    _statusFavourite();
    super.initState();
  }

  void _statusFavourite() async {
    prefs = await SharedPreferences.getInstance();
    if(prefs.getString(widget.id_Meal) != null){
      if(prefs.getString(widget.id_Meal) == "yes"){
        setState(() {
          _colorsFav = Colors.pink;
        });
      }else{
        setState(() {
          _colorsFav = Colors.black45;
        });
      }
    }else{
      setState(() {
        _colorsFav = Colors.black45;
      });
    }
  }

  void _addPrefFavourite(){
    prefs.setString(widget.id_Meal, "yes");
    _statusFavourite();
  }

  void _minPrefFavourite(){
    prefs.setString(widget.id_Meal, "no");
    _statusFavourite();
  }

  void _fetchFoodDetail() {
    _foodDetailBloc.add(GetFoodDetail());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.str_meal),
      ),
      body: BlocProvider(
        create: (_) => _foodDetailBloc,
        child: BlocListener<FoodDetailBloc, FoodDetailState>(
          listener: (context, state) {
            if (state is FoodDetailError) {
              print("ERROR DETAIL ${state.message}");
            } else if (state is FoodDetailLoaded) {
              print("Data Sampai VIEW ${state.foodModel.meals}");
            }
          },
          child: BlocBuilder<FoodDetailBloc, FoodDetailState>(
            builder: (context, state) {
              if (state is FoodDetailInitial) {
                return _buildLoading();
              } else if (state is FoodDetailLoading) {
                return _buildLoading();
              } else if (state is FoodDetailLoaded) {
                print("FOOD DETAIL BERHASI DI LOADED");
                return _buildDetailFood(context, state.foodModel);
              } else if (state is FoodDetailError) {
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

  Widget _buildDetailFood(BuildContext context, FoodModel foodModel) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                child: FadeInImage.assetNetwork(
                    placeholder: 'assets/placeholderimage.gif',
                    image: foodModel.meals![0].strMealThumb),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          _handleClickOption();
                        },
                        child: Row(
                          children: [
                            Icon(Icons.arrow_forward_ios_outlined, color: Colors.black45, size: 15,),
                            Padding(padding: EdgeInsets.only(left: 8)),
                            Text(_str_button, style: TextStyle(color: Colors.black45, fontSize: 11)),
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10, right: 10)),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: (){
                          prefs.getString(widget.id_Meal) == "yes"
                              ?
                          _deleteFavourite(foodModel.meals![0].idMeal)
                              :
                          _saveToFavorite(
                              foodModel.meals![0].idMeal,
                              foodModel.meals![0].strMeal,
                              foodModel.meals![0].strArea,
                              foodModel.meals![0].strCategory,
                              foodModel.meals![0].strMealThumb,
                              foodModel.meals![0].strInstructions,
                              foodModel.meals![0].strIngredient1,
                              foodModel.meals![0].strMeasure1,
                              foodModel.meals![0].strIngredient2,
                              foodModel.meals![0].strMeasure2,
                              foodModel.meals![0].strIngredient3,
                              foodModel.meals![0].strMeasure3,
                              foodModel.meals![0].strIngredient4,
                              foodModel.meals![0].strMeasure4,
                              foodModel.meals![0].strIngredient5,
                              foodModel.meals![0].strMeasure5
                          );
                        },
                        child: Row(
                          children: [
                            prefs.getString(widget.id_Meal) != "yes"
                                ?
                            Icon(Icons.favorite_outline, color: _colorsFav, size: 15,)
                                :
                            Icon(Icons.favorite_outlined, color: _colorsFav, size: 20,),
                            Padding(padding: EdgeInsets.only(left: 8)),
                            Text("Favourite", style: TextStyle(color: Colors.black45, fontSize: 11)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            _option
                ? _createInstruction(foodModel.meals![0].strInstructions)
                : _createIngredients(
                    foodModel.meals![0].strIngredient1,
                    foodModel.meals![0].strMeasure1,
                    foodModel.meals![0].strIngredient2,
                    foodModel.meals![0].strMeasure2,
                    foodModel.meals![0].strIngredient3,
                    foodModel.meals![0].strMeasure3,
                    foodModel.meals![0].strIngredient4,
                    foodModel.meals![0].strMeasure4,
                    foodModel.meals![0].strIngredient5,
                    foodModel.meals![0].strMeasure5),
          ],
        ),
      ),
    );
  }

  void _handleClickOption() {
    if (_option == true) {
      setState(() {
        _option = false;
        _str_button = "Instruction";
      });
    } else {
      setState(() {
        _option = true;
        _str_button = "Ingredient";
      });
    }
  }

  _createInstruction(String strInstructions) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20, left: 6),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Instruction",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, left: 6),
          child: Text(
            strInstructions,
            style: TextStyle(color: Colors.black54),
          ),
        )
      ],
    );
  }

  _createIngredients(
      String strIngredient1,
      String strMeasure1,
      String strIngredient2,
      String strMeasure2,
      String strIngredient3,
      String strMeasure3,
      String strIngredient4,
      String strMeasure4,
      String strIngredient5,
      String strMeasure5) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20, left: 6, bottom: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Ingredient",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
            ),
          ),
        ),
        Container(
          height: 1,
          color: Colors.grey,
        ),
        Padding(
            padding: EdgeInsets.only(top: 10, left: 6),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    strIngredient1,
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    strMeasure1,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54),
                  ),
                )
              ],
            )),
        Container(
          height: 1,
          color: Colors.black12,
        ),
        Padding(
            padding: EdgeInsets.only(top: 10, left: 6),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    strIngredient2,
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    strMeasure2,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54),
                  ),
                )
              ],
            )),
        Container(
          height: 1,
          color: Colors.black12,
        ),
        Padding(
            padding: EdgeInsets.only(top: 10, left: 6),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    strIngredient3,
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    strMeasure3,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54),
                  ),
                )
              ],
            )),
        Container(
          height: 1,
          color: Colors.black12,
        ),
        Padding(
            padding: EdgeInsets.only(top: 10, left: 6),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    strIngredient4,
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    strMeasure4,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54),
                  ),
                )
              ],
            )),
        Container(
          height: 1,
          color: Colors.black12,
        ),
        Padding(
            padding: EdgeInsets.only(top: 10, left: 6),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    strIngredient5,
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    strMeasure5,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54),
                  ),
                )
              ],
            )),
        Container(
          height: 1,
          color: Colors.black12,
        ),
      ],
    );
  }

  void _saveToFavorite(
      String idMeal,
      String strMeal,
      String strArea,
      String strCategory,
      String strMealThumb,
      String strInstructions,
      String strIngredient1,
      String strMeasure1,
      String strIngredient2,
      String strMeasure2,
      String strIngredient3,
      String strMeasure3,
      String strIngredient4,
      String strMeasure4,
      String strIngredient5,
      String strMeasure5
      ) {
    AppDatabase().insertFoods(Food(
        id: int.parse(idMeal),
        idMeal: int.parse(idMeal),
        strMeal: strMeal,
        strArea: strArea,
        strCategory: strCategory,
        strMealThumb: strMealThumb,
        strInstruction: strInstructions,
        strIngredient1: strIngredient1,
        strIngredient2: strIngredient2,
        strIngredient3: strIngredient3,
        strIngredient4: strIngredient4,
        strIngredient5: strIngredient5,
        strMeasure1: strMeasure1,
        strMeasure2: strMeasure2,
        strMeasure3: strMeasure3,
        strMeasure4: strMeasure4,
        strMeasure5: strMeasure5));
    _addPrefFavourite();
  }

  _deleteFavourite(String idMeal) {
    AppDatabase().deleteFavourite(int.parse(idMeal));
    _minPrefFavourite();
  }
}
