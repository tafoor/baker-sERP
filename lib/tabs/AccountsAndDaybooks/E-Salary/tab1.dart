import 'package:flutter/material.dart';


class Tab1 extends StatefulWidget {
  @override
  _Tab1State createState() => _Tab1State();
}


String dropdownvalue = 'Choose Employee';
DateTime selectedDate = DateTime.now();
String test = '';

class _Tab1State extends State<Tab1> {
  final _formKey = GlobalKey<FormState>();
  var _loanDeduction = TextEditingController();
  var _basicSalary = TextEditingController();
  var _otherDeductions = TextEditingController();
  var _deductionsNote = TextEditingController();


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
                  'Choose Employee',
                  'Employee1',
                  'Employee2',
                  'Employee3',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              width: 80,
            ),
            Container(
              child: Text(dropdownvalue + ' loan')
            ),
            SizedBox(
              width: 80,
            ),
            Container(
              child: Text(dropdownvalue + ' Actual Payable')
            ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: TextFormField(
                enabled: false,
                controller: _basicSalary,
                decoration: InputDecoration(
                  labelText: 'Basic Salary',
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
                controller: _loanDeduction,
                decoration: InputDecoration(
                  labelText: 'Loan Deduction',
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
                controller: _otherDeductions,
                decoration: InputDecoration(
                  labelText: 'Other Deductions',
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
                controller: _deductionsNote,
                decoration: InputDecoration(
                  labelText: 'Deduction Note',
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
