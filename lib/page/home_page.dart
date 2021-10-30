import 'package:flutter/material.dart';
import 'package:food/page/list_favorite_page.dart';
import 'package:food/page/list_food_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late bool _switch;
  String? appBarTitle;

  @override
  void initState() {
    _switch = true;
    appBarTitle = "List Food";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(appBarTitle!, style: TextStyle(fontSize: 17, color: Colors.white),),
        ),
        actions: [
          _switch ?
              GestureDetector(
                onTap: (){
                  handleSwitch();
                },
                child: Container(
                  child: Icon(Icons.favorite_outlined, size: 20,),
                ),
              ) :
              GestureDetector(
                onTap: (){
                  handleSwitch();
                },
                child: Container(
                  child: Icon(Icons.fastfood_outlined, size: 20,),
                ),
              ),
          Padding(padding: EdgeInsets.only(right: 20)),
        ],
      ),
      body: _switch
          ?
      ListFoodPage()
          :
      ListFavouritePage(),
    );
  }

  void handleSwitch() {
    if(_switch == false){
      setState(() {
        _switch = true;
        appBarTitle = "List Food";
      });
    }else{
      setState(() {
        _switch = false;
        appBarTitle = "Favourite Food";
      });
    }
  }
}
