import 'package:flutter/material.dart';
import 'package:food/db/food_database.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'food_detail.dart';

class ListFavouritePage extends StatefulWidget {
  const ListFavouritePage({Key? key}) : super(key: key);

  @override
  _ListFavouritePageState createState() => _ListFavouritePageState();
}

class _ListFavouritePageState extends State<ListFavouritePage> {

  late SharedPreferences prefs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _createStreamBuilder(),
    );
  }

  Widget _createStreamBuilder() {
    return StreamBuilder(
      stream: AppDatabase().watchAllFood(),
      builder: (context, AsyncSnapshot<List<Food>> snapshot){
        return ListView.builder(
          itemCount: snapshot?.data?.length ?? 0,
          itemBuilder: (_, index){
            var id_meal           = snapshot.data![index].idMeal;
            var str_meal          = snapshot.data![index].strMeal;
            var str_meal_thumb    = snapshot.data![index].strMealThumb;
            var str_category      = snapshot.data![index].strCategory;
            var str_area          = snapshot.data![index].strArea;
            var str_instructions  = potongString(snapshot.data![index].strInstruction);
            var deleteFavourite   = snapshot.data![index];

            return _buildCardFavourite(context,id_meal,str_meal,str_category,str_instructions,str_meal_thumb,str_area, deleteFavourite);
          },
        );
      },
    );
  }

  String potongString(String text, { length: 50, omission: '...' }) {
    if (length >= text.length) {
      return text;
    }
    return text.replaceRange(length, text.length, omission);
  }

  Widget _buildCardFavourite(BuildContext context,int id_meal, String str_meal, String str_category, String str_instructions, String str_meal_thumb, String str_area, Food deleteFavourite) {
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
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: OutlinedButton(
                          onPressed: () {
                            AppDatabase().deleteFoods(deleteFavourite);
                            setState(() {
                              _createStreamBuilder();
                              _deletePrefFavourite(id_meal);
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.delete_forever, color: Colors.red, size: 20,),
                              Padding(padding: EdgeInsets.only(left: 8)),
                              Text("Unfavourite", style: TextStyle(color: Colors.red, fontSize: 11))
                            ],
                          ),
                        ),
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

  void _deletePrefFavourite(int id_meal) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString('${id_meal}', 'no');
  }
}
