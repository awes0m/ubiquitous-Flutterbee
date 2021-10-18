import 'package:flutter/material.dart';

import './categories_screen.dart';
import './favourites_screen.dart';
import '../widgets/main_drawer.dart';

class Tabsscreen extends StatefulWidget {
  const Tabsscreen({Key? key}) : super(key: key);

  @override
  _TabsscreenState createState() => _TabsscreenState();
}

class _TabsscreenState extends State<Tabsscreen> {
  final List<Map<String, Object>> _pages = [
    {'page': CategoriesScreen(), 'title': 'Categories'},
    {'page': FavouritesScreen(), 'title': 'Favourites'}
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title'].toString()),
      ),
      // ignore: cast_nullable_to_non_nullable
      body: _pages[_selectedPageIndex]['page'] as Widget,
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          backgroundColor: Theme.of(context).colorScheme.primary,
          selectedItemColor: Colors.white,
          unselectedItemColor: Theme.of(context).colorScheme.secondary,
          currentIndex: _selectedPageIndex,
          //type: BottomNavigationBarType.shifting,
          items: const [
            BottomNavigationBarItem(
              //backgroundColor:Theme.of(context).colorScheme.primary,
              icon: Icon(Icons.category),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Favourites',
            ),
          ]),
    );
  }
}
