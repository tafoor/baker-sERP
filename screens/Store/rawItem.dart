import '../../tabs/Store/RawItem/tab1.dart';
import '../../tabs/Store/RawItem/tab2.dart';
import 'package:flutter/material.dart';

import '../../side_drawer.dart';

class RawItem extends StatefulWidget {
  @override
  _RawItemState createState() => _RawItemState();
}

class _RawItemState extends State<RawItem> {
  int _index = 0;

  final List<Widget> _tabs = [Tab1(), Tab2()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('RawItem'),
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
