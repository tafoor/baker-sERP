import '../../tabs/Employees/Salesman/tab1.dart';
import '../../tabs/Employees/Salesman/tab2.dart';
import 'package:flutter/material.dart';

import '../../side_drawer.dart';

class Salesman extends StatefulWidget {
  @override
  _SalesmanState createState() => _SalesmanState();
}

class _SalesmanState extends State<Salesman> {
  int _index = 0;

  final List<Widget> _tabs = [Tab1(), Tab2()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('Salesman'),
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
