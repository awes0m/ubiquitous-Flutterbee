import 'package:flutter/material.dart';
import 'package:tour_apisod/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routename = '/filters';
  final Function saveFilters;
  final Map<String, bool> currentFilter;
  const FiltersScreen(this.currentFilter, this.saveFilters);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  @override
  @override
  void initState() {
    _glutenFree = widget.currentFilter['gluten'] as bool;
    _vegetarian = widget.currentFilter['vegetarian'] as bool;
    _vegan = widget.currentFilter['vegan'] as bool;
    _lactoseFree = widget.currentFilter['lactose'] as bool;

    super.initState();
  }

  Widget _buildSwitchListTile(
    String title,
    String description,
    var currentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(description),
      value: currentValue as bool,
      onChanged: updateValue as void Function(bool),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
        actions: [
          IconButton(
              onPressed: () {
                final selectedFilters = {
                  'gluten': _glutenFree,
                  'lactose': _lactoseFree,
                  'vegan': _vegan,
                  'vegetarian': _vegetarian,
                };
                widget.saveFilters(selectedFilters);
              },
              icon: const Icon(Icons.save))
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Adjust Your meal selection.',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
              _buildSwitchListTile(
                'Gluten-Free',
                "only includes Gluten-Free meals",
                _glutenFree,
                (newValue) {
                  setState(() {
                    _glutenFree = newValue as bool;
                  });
                },
              ),
              _buildSwitchListTile(
                'Lactose-Free',
                "only includes Lactose-Free meals",
                _lactoseFree,
                (newValue) {
                  setState(() {
                    _lactoseFree = newValue as bool;
                  });
                },
              ),
              _buildSwitchListTile(
                  'Vegeterian', "only includes Vegeterian meals", _vegetarian,
                  (newValue) {
                setState(() {
                  _vegetarian = newValue as bool;
                });
              }),
              _buildSwitchListTile('Vegan', "only includes Vegan meals", _vegan,
                  (newValue) {
                setState(() {
                  _vegan = newValue as bool;
                });
              }),
            ],
          )),
        ],
      ),
      drawer: const MainDrawer(),
    );
  }
}
