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
      "NAME": 'Hammad',
      "Section": 'Store',
      "Father Name": 'Maqsood',
      "Designition": 'Store Manager',
      "Cast": 'Khan',
      "CNIC": '12345678',
      "Education": 'Inter',
      "Experience": '4 years',
      "Cell NO": '12345678',
      "Guardian Phone": '87654321',
      "Salary": '15000',
      "Permanant Address": 'XYZ',
      "Current Address": 'ABC',
      "Joining Date": '1-1-2021',
    },
    {
      "#": '2',
      "Name": 'Hasnain',
      "Section": 'Admin',
      "Father Name": 'Ghani',
      "Designition": 'Admin',
      "Cast": 'Chudry',
      "CNIC": '12345678',
      "Education": 'Inter',
      "Experience": '4 years',
      "Cell NO": '12345678',
      "Guardian Phone": '87654321',
      "Salary": '15000',
      "Permanant Address": 'XYZ',
      "Current Address": 'ABC',
      "Joining Date": '1-1-2021',
    },
    {
      "#": '3',
      "Name": 'Qasir',
      "Section": 'Sweeper',
      "Father Name": 'M.Ilyas',
      "Designition": 'Sweeper Head',
      "Cast": 'Malik',
      "CNIC": '12345678',
      "Education": 'Inter',
      "Experience": '4 years',
      "Cell NO": '12345678',
      "Guardian Phone": '87654321',
      "Salary": '12000',
      "Permanant Address": 'XYZ',
      "Current Address": 'ABC',
      "Joining Date": '1-1-2021',
    },
    {
      "#": '4',
      "Name": 'Tafoor',
      "Section": 'Admin',
      "Father Name": 'M.Ilyas',
      "Designition": 'Admin',
      "Cast": 'Malik',
      "CNIC": '12345678',
      "Education": 'Inter',
      "Experience": '4 years',
      "Cell NO": '12345678',
      "Guardian Phone": '87654321',
      "Salary": '15000',
      "Permanant Address": 'XYZ',
      "Current Address": 'ABC',
      "Joining Date": '1-1-2021',
    },
  ];
  List cols = [
    {"title": '#', 'key': '#', 'editable': false},
    {"title": 'Section', 'key': 'Section'},
    {"title": 'Name', 'key': 'Name'},
    {"title": 'Father Name', 'key': 'Father Name'},
    {"title": 'Designition', 'key': 'Designition'},
    {"title": 'Cast', 'key': 'Cast'},
    {"title": 'CNIC', 'key': 'CNIC'},
    {"title": 'Education', 'key': 'Education'},
    {"title": 'Experience', 'key': 'Experience'},
    {"title": 'Cell NO', 'key': 'Cell NO'},
    {"title": 'Guardian Phone', 'key': 'Guardian Phone'},
    {"title": 'Salary', 'key': 'Salary'},
    {"title": 'Permanant Address', 'key': 'Permanant Address'},
    {"title": 'Current Address', 'key': 'Current Address'},
    {"title": 'Joining Date ', 'key': 'Joining Date'},
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
