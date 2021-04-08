import '../../tabs/AccountsAndDaybooks/Reciept/tab1.dart';
import '../../tabs/AccountsAndDaybooks/Reciept/tab2.dart';
import 'package:flutter/material.dart';

import '../../side_drawer.dart';

class Reciept extends StatefulWidget {
  @override
  _RecieptState createState() => _RecieptState();
}

class _RecieptState extends State<Reciept> {
  int _index = 0;

  final List<Widget> _tabs = [Tab1(), Tab2()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('Reciept'),
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
