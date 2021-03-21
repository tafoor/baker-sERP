import '../../tabs/AccountsAndDaybooks/S-Salary/tab1.dart';
import '../../tabs/AccountsAndDaybooks/S-Salary/tab2.dart';
import 'package:flutter/material.dart';

import '../../side_drawer.dart';

class SSalary extends StatefulWidget {
  @override
  _SSalaryState createState() => _SSalaryState();
}

class _SSalaryState extends State<SSalary> {
  int _index = 0;

  final List<Widget> _tabs = [Tab1(), Tab2()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('Salesman Salary'),
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
