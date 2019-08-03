import 'package:flutter/material.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegeterian = false;
  bool _vegan = false;

  Widget buildSwitchListTile({String title, String subtitle, bool value}){
    return SwitchListTile(
                  title: Text(title),
                  subtitle: Text(subtitle),
                  onChanged: ((newValue) {
                    setState(() {
                      value = newValue;
                    });
                  }),
                  value: _glutenFree,
                );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                buildSwitchListTile(
                  title: 'Gluten-free',
                  subtitle: 'Only include gluten-free meals',
                  value: _glutenFree,
                ),
                buildSwitchListTile(
                  title: 'Vegeterian',
                  subtitle: 'Only include vegeterian meals',
                  value: _vegeterian,
                ),
                buildSwitchListTile(
                  title: 'Vegan',
                  subtitle: 'Only include vegan meals',
                  value: _vegan,
                )
                
              
              ],
            ),
          )
        ],
      ),
    );
  }
}
