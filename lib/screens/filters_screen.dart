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
  bool _lactoseFree = false;

  Widget buildSwitchListTile(
      {String title, String subtitle, bool value, Function function}) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      // Update Value
      onChanged: function,
      value: value,
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
                    function: (value) {
                      setState(() {
                        _glutenFree = value;
                      });
                    },
                    value: _glutenFree),
                buildSwitchListTile(
                    title: 'Vegeterian',
                    subtitle: 'Only include vegeterian meals',
                    function: (value) {
                      setState(() {
                        _vegeterian = value;
                      });
                    },
                    value: _vegeterian),
                buildSwitchListTile(
                  title: 'Vegan',
                  subtitle: 'Only include vegan meals',
                  function: (value) {
                    setState(() {
                      _vegan = value;
                    });
                  },
                  value: _vegan,
                ),
                buildSwitchListTile(
                  title: 'Lactose',
                  subtitle: 'Only include lactose-free meals',
                  function: (value) {
                    setState(() {
                      _lactoseFree = value;
                    });
                  },
                  value: _lactoseFree,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
