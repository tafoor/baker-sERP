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
      "Dated": '1-2-2021',
      "Product": 'Salt',
      "Unit": 'Kg',
      "Price": '10 rs',
      "Quantity": '12',
      "Total Amount": '120rs',
    },
    {
      "SR#": '2',
      "Dated": '1-2-2021',
      "Product": 'Bread',
      "Unit": 'No Unit',
      "Price": '10 rs',
      "Quantity": '12',
      "Total Amount": '120rs',
    },
    {
      "SR#": '3',
      "Dated": '1-2-2021',
      "Product": 'Small Burger',
      "Unit": 'No Unit',
      "Price": '8 rs',
      "Quantity": '10',
      "Total Amount": '80rs',
    },
    {
      "SR#": '4',
      "Dated": '1-2-2021',
      "Product": 'Large Burger',
      "Unit": 'No Unit',
      "Price": '10 rs',
      "Quantity": '12',
      "Total Amount": '120rs',
    },
  ];
  List cols = [
    {"title": 'SR#', 'key': 'SR#', 'editable': false},
    {"title": 'Dated', 'key': 'Dated'},
    {"title": 'Product', 'key': 'Product'},
    {"title": 'Unit', 'key': 'Unit'},
    {"title": 'Price', 'key': 'Price'},
    {"title": 'Quantity', 'key': 'Quantity'},
    {"title": 'Total Amount', 'key': 'Total Amount'},
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
