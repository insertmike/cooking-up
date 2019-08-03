import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../widgets/debugging_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(18),
      children: DUMMY_CATEGORIES.map((catData) {
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
    );
  }
}
