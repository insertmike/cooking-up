import 'package:flutter/material.dart';

import './category_item.dart';
import './debugging_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meals'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(18),
        children: DEBUG_CATEGORIES.map((catData) {
          return CategoryItem(
            id: catData.id,
            color: catData.color,
            title: catData.title,
          );
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2, // For 200 width -> 300 height
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
      ),
    );
  }
}
