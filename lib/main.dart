import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/recipe_list_item.dart';
import 'package:recipe_app/recipe_menu.dart';
import 'package:recipe_app/recipe_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'NotoSansKR',
      ),
      home: RecipePage() // 앱을 켰을 때 가장 먼저 보이는 페이지를 RecipePage로 설정
    );
  }
}

class RecipePage extends StatelessWidget{
  @override
  Widget build(Object context) {

    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            CupertinoIcons.search, // 쿠퍼티노 아이콘 사용
            color: Colors.black,
          ),
          SizedBox(width: 15),
          SizedBox(width: 15),
          Icon(
            CupertinoIcons.heart,
            color: Colors.redAccent,
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem('assets/coffee.jpg','Coffee'),
            RecipeListItem('assets/burger.jpg','Burger'),
            RecipeListItem('assets/pizza.jpg','Pizza'),
        ],),
      )
    );
  }
}