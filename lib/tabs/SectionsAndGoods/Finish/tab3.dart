import 'package:flutter/material.dart';

class Tab3 extends StatefulWidget {
  @override

  _Tab3State createState() => _Tab3State();
}

String dropdownvalue = 'Select Section';

class _Tab3State extends State<Tab3> {
  final _formKey = GlobalKey<FormState>();
  var _title = TextEditingController();
  var _companyVehicle = TextEditingController();
  var _otherVehicle = TextEditingController();
  var _tcs = TextEditingController();
  var _units = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: DropdownButton<String>(
                value: dropdownvalue,
                icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                underline: Container(
                  height: 2,
                ),
                
                onChanged: (String newValue) {
                  setState(() {
                    dropdownvalue = newValue;
                  }); 
                },
                items: <String>[
                  'Select Section',
                  'Rusk',
                  'Bread',
                  'Pastries',
                  'Donuts'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: TextFormField(
                controller: _title,
                decoration: InputDecoration(
                  labelText: 'Title',
                ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Text is empty';
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: TextFormField(
                controller: _companyVehicle,
                decoration: InputDecoration(
                  labelText: 'Company Vehicle Price',
                ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Text is empty';
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: TextFormField(
                controller: _otherVehicle,
                decoration: InputDecoration(
                  labelText: 'Other Vehicle Price',
                ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Text is empty';
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: TextFormField(
                controller: _tcs,
                decoration: InputDecoration(
                  labelText: 'TCS & Other Price',
                ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Text is empty';
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: TextFormField(
                controller: _units,
                decoration: InputDecoration(
                  labelText: 'Units',
                ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Text is empty';
                  }
                  return null;
                },
              ),
            ),
            RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  print('Pressed');
                }
              },
              child: Text('Add'),
              hoverColor: Colors.amber,
              textColor: Colors.white,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
