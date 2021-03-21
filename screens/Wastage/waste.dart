import '../../tabs/Wastage/Waste/tab1.dart';
import '../../tabs/Wastage/Waste/tab2.dart';
import 'package:flutter/material.dart';

import '../../side_drawer.dart';

class Waste extends StatefulWidget {
  @override
  _WasteState createState() => _WasteState();
}

class _WasteState extends State<Waste> {
  int _index = 0;

  final List<Widget> _tabs = [Tab1(), Tab2()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('Waste'),
      ),
      body: _tabs[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (index) => setState(() {
          _index = index;
        }),

        selectedItemColor: Colors.white,
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
