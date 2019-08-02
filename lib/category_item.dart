import 'package:flutter/material.dart';

import './category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final double borderRadius = 15;

  CategoryItem({
    @required this.title,
    @required this.color,
  });

  void selectCategory(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
         builder: (_) {
           return CategoryMealsScreen();
         }
    ),
    
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(borderRadius),
          child: Container(
        padding: EdgeInsets.all(borderRadius),
        child: Text(title, style: Theme.of(context).textTheme.title,),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(.7),
              color,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
