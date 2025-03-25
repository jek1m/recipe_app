
import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,),
      child: Row(
        children: [
          menuitem(Icons.food_bank,'ALL'),
          SizedBox(width: 25,),// 사이 간격 조절
          menuitem(Icons.emoji_food_beverage,'Coffee'),
          SizedBox(width: 25,),
          menuitem(Icons.fastfood,'Burger'),
          SizedBox(width: 25,),
          menuitem(Icons.local_pizza,'Pizza'),
        ],
      ),
    );
  }

  Container menuitem(IconData icon,String text) {
    return Container(
        width: 60,
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //가운데 정렬
          children: [
            Icon(
              icon,
              size: 30,
              color: Colors.redAccent,
            ),
            SizedBox(height: 5,),
            Text(text),
          ],
        ),
      );
  }

}