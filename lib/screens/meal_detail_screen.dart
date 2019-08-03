import 'package:flutter/material.dart';
import '../widgets/debugging_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-specific';
  final Function toggleFavorite;
  final Function isFavorite;

  MealDetailScreen(this.toggleFavorite, this.isFavorite);

  Widget buildSectionTitle(String txt, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(txt, style: Theme.of(context).textTheme.title),
    );
  }

  Widget buildContainer({Widget child}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle('Ingredients', context),
            //kur,
            buildContainer(
                child: ListView.builder(
                    itemBuilder: (ctx, index) {
                      return Card(
                        color: Theme.of(context).accentColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          child: Text(selectedMeal.ingredients[index]),
                        ),
                      );
                    },
                    itemCount: selectedMeal.ingredients.length)),

            buildSectionTitle('Steps', context),
            buildContainer(
                child: ListView.builder(
              itemCount: selectedMeal.steps.length,
              itemBuilder: (ctx, index) => Column(
                children: <Widget>[
                  ListTile(
                    title: Text(selectedMeal.steps[index]),
                    leading: CircleAvatar(
                      child: Text('# ${(index + 1).toString()}'),
                    ),
                  ),
                  Divider(),
                ],
              ),
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: isFavorite(mealId) ? Icon(Icons.star) : Icon(Icons.star_border),
        onPressed: () => toggleFavorite(mealId),
      ),
    ); //Center(child: Text('zdr'),);
  }
}
