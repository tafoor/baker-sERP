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
      "SR#": '1',
      "Item Name": 'Salt',
      "Unit": 'KG',
      "Price": '50',
      "Opening Quantity": '21.05',
      "Amount": '1500',
      "Purchases IN": '0',
      "Amount": '0',
      "Purchases out": '0',
      "Amount": '0',
      "Purchases In Hand": '21.05',
      "Amount": '1500',
    },
    {
      "SR#": '2',
      "Item Name": 'Flour',
      "Unit": 'KG',
      "Price": '50',
      "Opening Quantity": '291.05',
      "Amount": '1000',
      "Purchases IN": '0',
      "Amount": '0',
      "Purchases out": '0',
      "Amount": '0',
      "Purchases In Hand": '291.05',
      "Amount": '1000',
    },
    {
      "SR#": '3',
      "Item Name": 'Oil',
      "Unit": 'Litre',
      "Price": '140',
      "Opening Quantity": '23.05',
      "Amount": '100',
      "Purchases IN": '0',
      "Amount": '0',
      "Purchases out": '0',
      "Amount": '0',
      "Purchases In Hand": '23.05',
      "Amount": '100',
    },
    {
      "SR#": '4',
      "Item Name": 'Bread',
      "Unit": 'KG',
      "Price": '50',
      "Opening Quantity": '231.05',
      "Amount": '1000',
      "Purchases IN": '0',
      "Amount": '0',
      "Purchases out": '0',
      "Amount": '0',
      "Purchases In Hand": '231.05',
      "Amount": '1000',
    },
  ];
  List cols = [
    {"title": 'SR#', 'key': 'SR#', 'editable': false},
    {"title": 'Item Name', 'key': 'Item Name'},
    {"title": 'Unit', 'key': 'Unit'},
    {"title": 'Price', 'key': 'Price'},
    {"title": 'Opening Quantity', 'key': 'Opening Quantity'},
    {"title": 'Amount', 'key': 'Amount'},
    {"title": 'Price', 'key': 'Price'},
    {"title": 'Purchases IN', 'key': 'Purchases IN'},
    {"title": 'Amount', 'key': 'Amount'},
    {"title": 'Purchases out ', 'key': 'Purchases out'},
    {"title": 'Amount', 'key': 'Amount'},
    {"title": 'Purchases In Hand', 'key': 'Purchases In Hand'},
    {"title": 'Amount', 'key': 'Amount'},
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
  void _printEditedRows() {
    List editedRows = _editableKey.currentState.editedRows;
    print(editedRows);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.print),
        onPressed: () {},
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
