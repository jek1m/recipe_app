
import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget{

  RecipeListItem(this.path, this.title);

  String path;
  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2/1, 
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
              path,
              fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8,),
          Text(
            'Made $title',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 4,),
          Text(
            "Have you ever made your own $title? Once you've tried a homemade $title, you'll never go back.",
            style: TextStyle(fontSize: 12,color: Colors.black.withOpacity(0.5)),
          ) //이 문자열에는 '이 있기 때문에 '으로 묶어주면 안됨. > ""으로 묶어주기
        ],
      ),
    );
  }

}