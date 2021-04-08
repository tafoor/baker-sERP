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
      "Product": 'Rusk',
      "Section": 'Ali Bakers',
      "Demand": '150',
      "Dated": '1-2-2021',
      "Create At": '1-2-2021 3.15pm',
    },
    {
      "#": '2',
      "Product": 'Biscuits',
      "Section": 'Hamra Bakers',
      "Demand": '100',
      "Dated": '1-2-2021',
      "Create At": '1-2-2021 2.10pm',
    },
    {
      "#": '3',
      "Product": 'Rusk',
      "Section": 'Rashid Sweets',
      "Demand": '12',
      "Dated": '1-2-2021',
      "Create At": '1-2-2021 4.05pm',
    },
    {
      "#": '4',
      "Product": 'Bread',
      "Section": 'Gloria Production',
      "Demand": '1',
      "Dated": '1-2-2021',
      "Create At": '1-2-2021 2.05pm',
    },
  ];
  List cols = [
    {"title": '#', 'key': '#', 'editable': false},
    {"title": 'Product', 'key': 'Product'},
    {"title": 'Section', 'key': 'Section'},
    {"title": 'Demand', 'key': 'Demand'},
    {"title": 'Dated', 'key': 'Dated'},
    {"title": 'Create At', 'key': 'Create At'},
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
