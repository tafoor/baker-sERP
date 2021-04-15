import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  @override
  _Tab1State createState() => _Tab1State();
}


String dropdownvalue = 'Choose Vehicle';
DateTime selectedDate = DateTime.now();

class _Tab1State extends State<Tab1> {
  final _formKey = GlobalKey<FormState>();
  var _currentMeter = TextEditingController();
  var _expense = TextEditingController();
  var _description = TextEditingController();


  _selectDate(BuildContext context) async {
  final DateTime picked = await showDatePicker(
    context: context,
    initialDate: selectedDate, // Refer step 1
    firstDate: DateTime(2000),
    lastDate: DateTime(2025),
  );
  if (picked != null && picked != selectedDate)
    setState(() {
      selectedDate = picked;
    });
}


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
                Text(
              "${selectedDate.toLocal()}".split(' ')[0],
            ),
            SizedBox(
              width: 20.0,
            ),
            RaisedButton(
              onPressed: () => _selectDate(context), // Refer step 3
              child: Text(
                'Select date',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              color: Colors.white,
            ),

            SizedBox(
              width: 70.0,
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
                  'Choose Vehicle',
                  'Vehicle1',
                  'Vehicle2',
                  'Vehicle3',
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
                controller: _description,
                decoration: InputDecoration(
                  labelText: 'Description',
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
                controller: _currentMeter,
                decoration: InputDecoration(
                  labelText: 'Current Meter',
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
                controller: _expense,
                decoration: InputDecoration(
                  labelText: 'Expense',
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
