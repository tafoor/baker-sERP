import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  @override
  _Tab1State createState() => _Tab1State();
}


String dropdownvalue = 'Choose Sector';
String dropdownvalue1 = 'Status';


class _Tab1State extends State<Tab1> {
  final _formKey = GlobalKey<FormState>();
  var _name = TextEditingController();
  var _address = TextEditingController();
  var _cnic = TextEditingController();
  var _phone = TextEditingController();
  var _mobile = TextEditingController();
  var _commission = TextEditingController();
  var _licence = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(
              width: 100.0,
            ),
            Container(
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
                  'Choose Sector',
                  'Sector1',
                  'Sector2',
                  'Sector3',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),    

            SizedBox(
              width: 70.0,
            ),

            Container(
              child: DropdownButton<String>(
                value: dropdownvalue1,
                icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                underline: Container(
                  height: 2,
                ),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownvalue1 = newValue;
                  });
                },
                items: <String>[
                  'Status',
                  'Active',
                  'Inactive',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),

              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: TextFormField(
                controller: _name,
                decoration: InputDecoration(
                  labelText: 'Name',
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
                controller: _address,
                decoration: InputDecoration(
                  labelText: 'Address',
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
                controller: _cnic,
                decoration: InputDecoration(
                  labelText: 'CNIC Number',
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
                controller: _phone,
                decoration: InputDecoration(
                  labelText: 'Phone',
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
                controller: _mobile,
                decoration: InputDecoration(
                  labelText: 'Mobile',
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
                controller: _commission,
                decoration: InputDecoration(
                  labelText: 'Commission',
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
                controller: _licence,
                decoration: InputDecoration(
                  labelText: 'Licence',
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
