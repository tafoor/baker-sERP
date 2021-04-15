import 'package:flutter/material.dart';


class Tab1 extends StatefulWidget {
  @override
  _Tab1State createState() => _Tab1State();
}

String dropdownvalue = 'Choose Section';
String dropdownvalue1 = 'Status';
DateTime selectedDate = DateTime.now();

class _Tab1State extends State<Tab1> {
  final _formKey = GlobalKey<FormState>();
  var _id = TextEditingController();
  var _name = TextEditingController();
  var _fatherName = TextEditingController();
  var _designation = TextEditingController();
  var _cast = TextEditingController();
  var _cnic = TextEditingController();
  var _education = TextEditingController();
  var _experience = TextEditingController();
  var _cell = TextEditingController();
  var _guardianCell = TextEditingController();
  var _salary = TextEditingController();
  var _permanentAddress = TextEditingController();
  var _currentAddress = TextEditingController();

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
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 100),
              height: 425,
              child: GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 2,
                childAspectRatio: 15,
                // Generate 100 widgets that display their index in the List.
                children: [
                  Center(
                    child: Container(
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
                          'Choose Section',
                          'Section1',
                          'Section2',
                          'Section3',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(left: 100, right: 100),
                      child: TextFormField(
                        controller: _id,
                        decoration: InputDecoration(
                          labelText: 'ID',
                        ),
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Text is empty';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
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
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(left: 100, right: 100),
                      child: TextFormField(
                        controller: _fatherName,
                        decoration: InputDecoration(
                          labelText: 'Father Name',
                        ),
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Text is empty';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(left: 100, right: 100),
                      child: TextFormField(
                        controller: _designation,
                        decoration: InputDecoration(
                          labelText: 'Designation',
                        ),
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Text is empty';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(left: 100, right: 100),
                      child: TextFormField(
                        controller: _cast,
                        decoration: InputDecoration(
                          labelText: 'Cast',
                        ),
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Text is empty';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
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
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(left: 100, right: 100),
                      child: TextFormField(
                        controller: _education,
                        decoration: InputDecoration(
                          labelText: 'Education',
                        ),
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Text is empty';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(left: 100, right: 100),
                      child: TextFormField(
                        controller: _experience,
                        decoration: InputDecoration(
                          labelText: 'Experience',
                        ),
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Text is empty';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(left: 100, right: 100),
                      child: TextFormField(
                        controller: _cell,
                        decoration: InputDecoration(
                          labelText: 'Cell Number',
                        ),
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Text is empty';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(left: 100, right: 100),
                      child: TextFormField(
                        controller: _guardianCell,
                        decoration: InputDecoration(
                          labelText: 'Guardian Cell Number',
                        ),
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Text is empty';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(left: 100, right: 100),
                      child: TextFormField(
                        controller: _salary,
                        decoration: InputDecoration(
                          labelText: 'Salary',
                        ),
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Text is empty';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(left: 100, right: 100),
                      child: Row(
                        children: [
                          Text(
                            "${selectedDate.toLocal()}".split(' ')[0],
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          RaisedButton(
                            onPressed: () =>
                                _selectDate(context), // Refer step 3
                            child: Text(
                              'Select date',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
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
                          'InActive',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: TextFormField(
                controller: _permanentAddress,
                decoration: InputDecoration(
                  labelText: 'Permanent Address',
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
              height: 50,
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: TextFormField(
                controller: _currentAddress,
                decoration: InputDecoration(
                  labelText: 'Current Address',
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
              child: RaisedButton(
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
            ),
          ],
        ),
      ),
    );
  }
}
