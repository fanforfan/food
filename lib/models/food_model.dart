class FoodModel {
  List<Meals>? meals;
  String? error;

  FoodModel({required this.meals});

  FoodModel.withError(String errorMessage){
    error = errorMessage;
  }

  FoodModel.fromJson(Map<String, dynamic> json){
    if(json['meals'] != null){
      meals = <Meals>[];
      json['meals'].forEach((v){
        meals!.add(new Meals.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.meals != null) {
      data['meals'] = this.meals!.map((v) => v.toJson()).toList();
    }
    return data;
  }

}

class Meals {
  late String idMeal;
  late String strMeal;
  late String strCategory;
  late String strArea;
  late String strInstructions;
  late String strMealThumb;
  // late String strYoutube;
  late String strIngredient1;
  late String strMeasure1;
  late String strIngredient2;
  late String strMeasure2;
  late String strIngredient3;
  late String strMeasure3;
  late String strIngredient4;
  late String strMeasure4;
  late String strIngredient5;
  late String strMeasure5;

  Meals(
      {required this.idMeal,
        required this.strMeal,
        required this.strCategory,
        required this.strArea,
        required this.strInstructions,
        required this.strMealThumb,
        // required this.strYoutube,
        required this.strIngredient1,
        required this.strMeasure1,
        required this.strIngredient2,
        required this.strMeasure2,
        required this.strIngredient3,
        required this.strMeasure3,
        required this.strIngredient4,
        required this.strMeasure4,
        });

  Meals.fromJson(Map<String, dynamic> json) {
    idMeal = json['idMeal'];
    strMeal = json['strMeal'];
    strCategory = json['strCategory'];
    strArea = json['strArea'];
    strInstructions = json['strInstructions'];
    strMealThumb = json['strMealThumb'];
    // strYoutube = json['strYoutube'];
    strIngredient1 = json['strIngredient1'];
    strMeasure1 = json['strMeasure1'];
    strIngredient2 = json['strIngredient2'];
    strMeasure2 = json['strMeasure2'];
    strIngredient3 = json['strIngredient3'];
    strMeasure3 = json['strMeasure3'];
    strIngredient4 = json['strIngredient4'];
    strMeasure4 = json['strMeasure4'];
    strIngredient5 = json['strIngredient5'];
    strMeasure5 = json['strMeasure5'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idMeal'] = this.idMeal;
    data['strMeal'] = this.strMeal;
    data['strCategory'] = this.strCategory;
    data['strArea'] = this.strArea;
    data['strInstructions'] = this.strInstructions;
    data['strMealThumb'] = this.strMealThumb;
    // data['strYoutube'] = this.strYoutube;
    data['strIngredient1'] = this.strIngredient1;
    data['strMeasure1'] = this.strMeasure1;
    data['strIngredient2'] = this.strIngredient2;
    data['strMeasure2'] = this.strMeasure2;
    data['strIngredient3'] = this.strIngredient3;
    data['strMeasure3'] = this.strMeasure3;
    data['strIngredient4'] = this.strIngredient4;
    data['strMeasure4'] = this.strMeasure4;
    data['strIngredient5'] = this.strIngredient5;
    data['strMeasure5'] = this.strMeasure5;
    return data;
  }
}