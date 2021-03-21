import '../../tabs/AccountsAndDaybooks/S-AdvSalary/tab1.dart';
import '../../tabs/AccountsAndDaybooks/S-AdvSalary/tab2.dart';
import 'package:flutter/material.dart';

import '../../side_drawer.dart';

class SAdvSalary extends StatefulWidget {
  @override
  _SAdvSalaryState createState() => _SAdvSalaryState();
}

class _SAdvSalaryState extends State<SAdvSalary> {
  int _index = 0;

  final List<Widget> _tabs = [Tab1(), Tab2()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('Salesman Advance Salary'),
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
