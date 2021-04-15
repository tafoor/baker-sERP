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
      "Regestration Number": '1',
      "Model": '2000',
      "Name": 'CD70',
      "Owner": 'Hammad',
      "Engine": '123',
      "Driver/Salesman": 'Hammad',
      "Color": 'red',
      "Sector": 'British Colony',
      "Mechanic": 'Ali',
      "Fuel Allowence": '100',
      "Opening Balance": '10',
      "Maintenance Reading": '1500km',
      "Driving Licence": '1234ws',
    },
    {
      "Regestration Number": '2',
      "Model": '2003',
      "Name": '125',
      "Owner": 'Hasnain',
      "Engine": '123',
      "Driver/Salesman": 'Hasnain',
      "Color": 'Black',
      "Sector": 'Raja Bazar',
      "Mechanic": 'Ali',
      "Fuel Allowence": '100',
      "Opening Balance": '10',
      "Maintenance Reading": '1500km',
      "Driving Licence": '1234sb',
    },
    {
      "Regestration Number": '3',
      "Model": '2004',
      "Name": 'Suzuki',
      "Owner": 'Zahoor',
      "Engine": '897',
      "Driver/Salesman": 'Zahoor',
      "Color": 'red',
      "Sector": 'town',
      "Mechanic": 'Ali',
      "Fuel Allowence": '100',
      "Opening Balance": '10',
      "Maintenance Reading": '15000km',
      "Driving Licence": '1234sb',
    },
    {
      "Regestration Number": '4',
      "Model": '2007',
      "Name": 'CD70',
      "Owner": 'Zahir',
      "Engine": '123',
      "Driver/Salesman": 'Zahir',
      "Color": 'red',
      "Sector": 'Cantt',
      "Mechanic": 'Ali',
      "Fuel Allowence": '100',
      "Opening Balance": '10',
      "Maintenance Reading": '150km',
      "Driving Licence": '1234az',
    },
  ];
  List cols = [
    {"title": 'Regestratition Number', 'key': 'Regestration Number'},
    {"title": 'Model', 'key': 'Model'},
    {"title": 'Name', 'key': 'Name'},
    {"title": 'Owner', 'key': 'Owner'},
    {"title": 'Engine', 'key': 'Engine'},
    {"title": 'Driver/Salesman', 'key': 'Driver/Salesman'},
    {"title": 'Color', 'key': 'Color'},
    {"title": 'Sector', 'key': 'Sector'},
    {"title": 'Mechanic', 'key': 'Mechanic'},
    {"title": 'Fuel Allowence', 'key': 'Fuel Allowence'},
    {"title": 'Opening Balance', 'key': 'Opening Balance'},
    {"title": 'Maintenance Reading', 'key': 'Maintenance Reading'},
    {"title": 'Driving Licence', 'key': 'Driving Licence'},
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
