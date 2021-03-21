import '../../tabs/AccountsAndDaybooks/E-AdvSalary/tab1.dart';
import '../../tabs/AccountsAndDaybooks/E-AdvSalary/tab2.dart';
import 'package:flutter/material.dart';

import '../../side_drawer.dart';

class EAdvSalary extends StatefulWidget {
  @override
  _EAdvSalaryState createState() => _EAdvSalaryState();
}

class _EAdvSalaryState extends State<EAdvSalary> {
  int _index = 0;

  final List<Widget> _tabs = [Tab1(), Tab2()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('Employee Advance Salary'),
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
