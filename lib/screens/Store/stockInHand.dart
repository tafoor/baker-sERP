import '../../tabs/Store/StockInHand/tab1.dart';
import '../../tabs/Store/StockInHand/tab2.dart';
import 'package:flutter/material.dart';

import '../../side_drawer.dart';

class StockInHand extends StatefulWidget {
  @override
  _StockInHandState createState() => _StockInHandState();
}

class _StockInHandState extends State<StockInHand> {
  int _index = 0;

  final List<Widget> _tabs = [Tab1(), Tab2()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('Stock In Hand'),
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
