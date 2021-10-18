import 'package:flutter/material.dart';
import 'package:tour_apisod/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const routename = '/filters';
  const FiltersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Filters')),
      body: const Center(
        child: Text('Filters!'),
      ),
      drawer: MainDrawer(),
    );
  }
}
