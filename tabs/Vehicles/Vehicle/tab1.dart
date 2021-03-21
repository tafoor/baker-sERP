import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  final _formKey = GlobalKey<FormState>();
  var _regNum = TextEditingController();
  var _model = TextEditingController();
  var _name = TextEditingController();
  var _owner = TextEditingController();
  var _engine = TextEditingController();
  var _driver = TextEditingController();
  var _color = TextEditingController();
  var _sector = TextEditingController();
  var _mechanic = TextEditingController();
  var _fuelAllowence = TextEditingController();
  var _openingBalance = TextEditingController();
  var _maintenanceReading = TextEditingController();
  var _drivingLisence = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 100, right: 100),
                child: TextFormField(
                  controller: _regNum,
                  decoration: InputDecoration(
                    labelText: 'Registration Number',
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
                  controller: _model,
                  decoration: InputDecoration(
                    labelText: 'Model',
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
                  controller: _owner,
                  decoration: InputDecoration(
                    labelText: 'Owner',
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
                  controller: _engine,
                  decoration: InputDecoration(
                    labelText: 'Enigine / Chasis',
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
                  controller: _driver,
                  decoration: InputDecoration(
                    labelText: 'Driver / Salesman',
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
                  controller: _color,
                  decoration: InputDecoration(
                    labelText: 'Color',
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
                  controller: _sector,
                  decoration: InputDecoration(
                    labelText: 'Sector',
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
                  controller: _mechanic,
                  decoration: InputDecoration(
                    labelText: 'Mechanic',
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
                  controller: _fuelAllowence,
                  decoration: InputDecoration(
                    labelText: 'Fuel Allowence',
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
                  controller: _openingBalance,
                  decoration: InputDecoration(
                    labelText: 'Opening Balance',
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
                  controller: _maintenanceReading,
                  decoration: InputDecoration(
                    labelText: 'Maintenance Reading',
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
                  controller: _drivingLisence,
                  decoration: InputDecoration(
                    labelText: 'Driving Lisence',
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
      ),
    );
  }
}
