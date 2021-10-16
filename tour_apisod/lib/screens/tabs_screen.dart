import 'package:flutter/material.dart';
import 'package:tour_apisod/screens/categories_screen.dart';
import 'package:tour_apisod/screens/favourites_screen.dart';

class Tabsscreen extends StatefulWidget {
  const Tabsscreen({Key? key}) : super(key: key);

  @override
  _TabsscreenState createState() => _TabsscreenState();
}

class _TabsscreenState extends State<Tabsscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Meals'),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.category), text: 'Categories'),
                Tab(icon: Icon(Icons.star), text: 'Favourites'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              CategoriesScreen(),
              FavouritesScreen(),
            ],
          ),
        ));
  }
}
