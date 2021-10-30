import 'package:moor_flutter/moor_flutter.dart';
part 'food_database.g.dart';

class Foods extends Table{
  IntColumn get id => integer().autoIncrement()();
  IntColumn get idMeal => integer()();
  TextColumn get strMeal => text()();
  TextColumn get strArea => text()();
  TextColumn get strCategory => text()();
  TextColumn get strMealThumb => text()();
  TextColumn get strInstruction => text()();
  TextColumn get strIngredient1 => text()();
  TextColumn get strIngredient2 => text()();
  TextColumn get strIngredient3 => text()();
  TextColumn get strIngredient4 => text()();
  TextColumn get strIngredient5 => text()();
  TextColumn get strMeasure1 => text()();
  TextColumn get strMeasure2 => text()();
  TextColumn get strMeasure3 => text()();
  TextColumn get strMeasure4 => text()();
  TextColumn get strMeasure5 => text()();
}

@UseMoor(tables:[Foods])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'dbmoor.sqlite', logStatements: true));

  @override
  // TODO: implement schemaVersion
  int get schemaVersion => 1;
  Future<List<Food>> getAllFood() => select(foods).get();
  Stream<List<Food>> watchAllFood() => select(foods).watch();
  Future insertFoods(Food food) => into(foods).insert(food);
  Future deleteFoods(Food food) => delete(foods).delete(food);

  Stream<List<Food>> getDetail(int idMeal) {
    return (select(foods)..where((tbl) => tbl.idMeal.equals(idMeal))).watch();
  }

  Future deleteFavourite(int idMeal){
    return (delete(foods)..where((tbl) => tbl.idMeal.equals(idMeal))).go();
  }

}