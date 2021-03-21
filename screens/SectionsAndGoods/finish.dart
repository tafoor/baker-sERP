import '../../tabs/SectionsAndGoods/Finish/tab1.dart';
import '../../tabs/SectionsAndGoods/Finish/tab2.dart';
import '../../tabs/SectionsAndGoods/Finish/tab3.dart';
import '../../tabs/SectionsAndGoods/Finish/tab4.dart';
import 'package:flutter/material.dart';

import '../../side_drawer.dart';

class Finish extends StatefulWidget {
  @override
  _FinishState createState() => _FinishState();
}

class _FinishState extends State<Finish> {
  int _index = 0;

  final List<Widget> _tabs = [Tab1(), Tab2(), Tab3(), Tab4()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('Finish'),
        
      ),
      body: _tabs[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (index) => setState(() {
          _index = index;
        }),

        selectedItemColor: Colors.black,
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
