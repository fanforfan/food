import 'package:dio/dio.dart';
import 'package:food/models/food_model.dart';

class ListFoodRepo{
  final Dio _dio = Dio();

  final String id_meals;
  ListFoodRepo(this.id_meals);

  Future<FoodModel> fetchListFood() async {
    Response response = await _dio.get('https://www.themealdb.com/api/json/v1/1/search.php?f=b');
    print("INI DATA DI REPO ${response.data['meals']}");
    return FoodModel.fromJson(response.data);
  }

  Future<FoodModel> fetchDetailFood() async {
    Response response = await _dio.get('https://www.themealdb.com/api/json/v1/1/lookup.php?i=$id_meals');
    print("INI DATA DETAIL DI REPO ${response.data['meals']}");
    return FoodModel.fromJson(response.data);
  }

}

class NetworkError extends Error {}