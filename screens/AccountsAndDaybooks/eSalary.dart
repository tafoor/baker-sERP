import '../../tabs/AccountsAndDaybooks/E-Salary/tab1.dart';
import '../../tabs/AccountsAndDaybooks/E-Salary/tab2.dart';
import 'package:flutter/material.dart';

import '../../side_drawer.dart';

class ESalary extends StatefulWidget {
  @override
  _ESalaryState createState() => _ESalaryState();
}

class _ESalaryState extends State<ESalary> {
  int _index = 0;

  final List<Widget> _tabs = [Tab1(), Tab2()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('Employee Salary'),
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
