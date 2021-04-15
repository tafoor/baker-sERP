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
      "Salesman Name": 'qasir',
      "Dated": '1-3-2021',
      "Sector": 'Cantt',
      "Commision": '5000',
      "Loan Deduction": '1000',
      "Other Deduction": '100',
      "Deduction Note": '1000',
    },
    {
      "#": '2',
      "Salesman Name": 'Hammad',
      "Dated": '1-3-2021',
      "Sector": 'Cantt',
      "Commision": '50',
      "Loan Deduction": '100',
      "Other Deduction": '100',
      "Deduction Note": '100',
    },
    {
      "#": '3',
      "Salesman Name": 'Tafoor',
      "Dated": '1-3-2021',
      "Sector": 'Caltex Road',
      "Commision": '50',
      "Loan Deduction": '10',
      "Other Deduction": '10',
      "Deduction Note": '1000',
    },
    {
      "#": '4',
      "Salesman Name": 'Ali',
      "Dated": '1-3-2021',
      "Sector": 'Town',
      "Commision": '500',
      "Loan Deduction": '1000',
      "Other Deduction": '10',
      "Deduction Note": '100',
    },
  ];
  List cols = [
    {"title": '#', 'key': '#', 'editable': false},
    {"title": 'Salesman Name', 'key': 'Salesman Name'},
    {"title": 'Dated', 'key': 'Dated'},
    {"title": 'Sector', 'key': 'Sector'},
    {"title": 'Commision', 'key': 'Commision'},
    {"title": 'Loan Deduction', 'key': 'Loan Deduction'},
    {"title": 'Other Deduction', 'key': 'Other Deduction'},
    {"title": 'Deduction Note', 'key': 'Deduction Note'},
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
