import '../../tabs/SectionsAndGoods/Sections/tab1.dart';
import '../../tabs/SectionsAndGoods/Sections/tab2.dart';
import 'package:flutter/material.dart';

import '../../side_drawer.dart';

class Sections extends StatefulWidget {
  static const routeName = '/sections';
  @override
  _SectionsState createState() => _SectionsState();
}

class _SectionsState extends State<Sections> {
  int _index = 0;

  final List<Widget> _tabs = [Tab1(), Tab2(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('Sections'),
      ),
      body: _tabs[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (index) => setState(() {
          _index = index;
        }),

        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.black,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: ('Add'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye),
            label: ('View'),
          ),
        ],
      ),
    );
  }
}
