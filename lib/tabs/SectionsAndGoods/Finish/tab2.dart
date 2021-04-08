import 'package:editable/editable.dart';
import 'package:flutter/material.dart';


class Tab2 extends StatefulWidget {
  Tab2({Key key}) : super(key: key);



  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  /// Create a Key for EditableState
  final _editableKey = GlobalKey<EditableState>();


  List rows = [
    {
      "#": '2',
      "Section": 'Bread',
      "Title": 'Plain Bread',
      "Company Price": '50',
      "Other Price": '10',
      "Courier Price": '10',
      "Quantity": '100',
      "Unit": 'Large',
    },
    {
      "#": '3',
      "Section": 'Bread',
      "Title": 'Plain Bread',
      "Company Price": '50',
      "Other Price": '10',
      "Courier Price": '10',
      "Quantity": '100',
      "Unit": 'Large',
    },
    {
      "#": '4',
      "Section": 'Bread',
      "Title": 'Plain Bread',
      "Company Price": '50',
      "Other Price": '10',
      "Courier Price": '10',
      "Quantity": '100',
      "Unit": 'Large',
    },
    {
      "#": '5',
      "Section": 'Bread',
      "Title": 'Plain Breadaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      "Company Price": '50',
      "Other Price": '10',
      "Courier Price": '10',
      "Quantity": '100',
      "Unit": 'Large',
    },
  ];
  List cols = [
    {"title": '#',  'key': '#', 'editable': false},
    {"title": 'Section', 'key': 'Section'},
    {"title": 'Title', 'key': 'Title'},
    {"title": 'Company Price',  'key': 'Company Price'},
    {"title": 'Other Price',  'key': 'Other Price'},
    {"title": 'Courier Price', 'key': 'Courier Price'},
    {"title": 'Quantity',  'key': 'Quantity'},
    {"title": 'Unit', 'key': 'Unit'},
  ];

  /// Function to add a new row
  /// Using the global key assigined to Editable widget
  /// Access the current state of Editable
  


  void _addNewRow() {
    setState(() {
      _editableKey.currentState.createRow();
    });
  }

  ///Print only edited rows.
  void _printRows() {
    List rows = _editableKey.currentState.rows;
    print(rows);
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.print),
        onPressed: () => _printRows(),
        backgroundColor: Colors.white70,
        hoverColor: Colors.white,
        hoverElevation: 15,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {},
                hoverColor: Colors.grey),
            IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
                hoverColor: Colors.grey),
          ],
        ),
      ),
      body: Editable(
        columns: cols,
        rows: rows,
        stripeColor2: Colors.blue[200],
        onRowSaved: (value) {
          print(value);
        },
        onSubmitted: (value) {
          print(value);
        },
        borderColor: Colors.blue,
        showSaveIcon: true,
        saveIconColor: Colors.grey,
        columnRatio: 0.3,
        trHeight: 40,
      ),
    );
  }
}