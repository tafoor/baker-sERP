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
      "#": '1',
      "Vendor Name": 'Faiz',
      "Vendor Address": 'XYZ',
      "Vendor Phone": '1234567',
      "Opening Debt": '0',
      "Opening Credit": '10000',
    },
    {
      "#": '2',
      "Vendor Name": 'Ali',
      "Vendor Address": 'XYZ',
      "Vendor Phone": '1234567',
      "Opening Debt": '0',
      "Opening Credit": '10',
    },
    {
      "#": '3',
      "Vendor Name": 'Azhar',
      "Vendor Address": 'XYZ',
      "Vendor Phone": '1234567',
      "Opening Debt": '0',
      "Opening Credit": '100',
    },
    {
      "#": '4',
      "Vendor Name": 'Azmat',
      "Vendor Address": 'XYZ',
      "Vendor Phone": '1234567',
      "Opening Debt": '0',
      "Opening Credit": '1000',
    },
  ];
  List cols = [
    {"title": '#', 'key': '#', 'editable': false},
    {"title": 'Vendor Name', 'key': 'Vendor Name'},
    {"title": 'Vendor Address', 'key': 'Vendor Address'},
    {"title": 'Vendor Phone', 'key': 'Vendor Phone'},
    {"title": 'Opening Debt', 'key': 'Opening Debt'},
    {"title": 'Opening Credit', 'key': 'Opening Credit'},
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
