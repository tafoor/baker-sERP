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
      "Sector": 'Ara Bazar',
      "Name": 'Tahir',
      "Address": 'XYZ',
      "CNIC": '12345678',
      "Phone": '78910111213',
      "Mobile": '1234567',
      "Commision": '0',
      "Licence": '87654321',
      "Status": 'Active',
    },
    {
      "#": '2',
      "Sector": 'Town',
      "Name": 'Tafoor',
      "Address": 'XYZ',
      "CNIC": '12345678',
      "Phone": '78910111213',
      "Mobile": '1234567',
      "Commision": '0',
      "Licence": '87654321',
      "Status": 'Inactive',
    },
    {
      "#": '3',
      "Sector": 'Cantt',
      "Name": ' Zahid',
      "Address": 'XYZ',
      "CNIC": '12345678',
      "Phone": '78910111213',
      "Mobile": '1234567',
      "Commision": '0',
      "Licence": '87654321',
      "Status": 'Active',
    },
    {
      "#": '4',
      "Sector": 'Adra',
      "Name": 'Kernal Zahid',
      "Address": 'XYZ',
      "CNIC": '12345678',
      "Phone": '78910111213',
      "Mobile": '1234567',
      "Commision": '0',
      "Licence": '87654321',
      "Status": 'Active',
    },
  ];
  List cols = [
    {"title": '#', 'key': '#', 'editable': false},
    {"title": 'Sector', 'key': 'Sector'},
    {"title": 'Name', 'key': 'Name'},
    {"title": 'Address', 'key': 'Address'},
    {"title": 'CNIC', 'key': 'CNIC'},
    {"title": 'Phone', 'key': 'Phone'},
    {"title": 'Mobile', 'key': 'Mobile'},
    {"title": 'Commision', 'key': 'Commision'},
    {"title": 'Licence', 'key': 'Licence'},
    {"title": 'Status', 'key': 'Status'},
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
