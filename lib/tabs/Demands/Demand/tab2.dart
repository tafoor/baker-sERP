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
      "NAME": 'Waqar',
      "Dated": '22-2-2021',
      "Loan Amount": '500',
      "Return/Month": '1000',
      "Sector": 'Ara Bazar',
    },
    {
      "#": '2',
      "NAME": 'Waleed',
      "Dated": '22-2-2021',
      "Loan Amount": '500',
      "Return/Month": '5000',
      "Sector": 'lalazar',
    },
    {
      "#": '3',
      "NAME": 'Wasiq',
      "Dated": '22-2-2021',
      "Loan Amount": '500',
      "Return/Month": '10000',
      "Sector": 'Cantt',
    },
    {
      "#": '4',
      "NAME": 'Waheed',
      "Dated": '22-2-2021',
      "Loan Amount": '500',
      "Return/Month": '1000',
      "Sector": 'Town',
    },
  ];
  List cols = [
    {"title": '#', 'key': '#', 'editable': false},
    {"title": 'NAME', 'key': 'NAME'},
    {"title": 'Dated', 'key': 'Dated'},
    {"title": 'Loan Amount', 'key': 'Loan Amount'},
    {"title": 'Return/Month', 'key': 'Return/Month'},
    {"title": 'Sector', 'key': 'Sector'},
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
