import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  @override
  _Tab1State createState() => _Tab1State();
}

String dropdownvalue = 'Choose Finish Good';
String dropdownvalue1 = 'Unit';

class _Tab1State extends State<Tab1> {
  final _formKey = GlobalKey<FormState>();
  var produceQtyController = TextEditingController();
  var itemTECs = <TextEditingController>[];
  var unitQtyTECs = <TextEditingController>[];
  var unitNameTECs = <TextEditingController>[];
  var cards = <Card>[];

  Card createCard() {
    var itemController = TextEditingController();
    var unitQtyController = TextEditingController();
    var unitNameController = TextEditingController();
    itemTECs.add(itemController);
    unitQtyTECs.add(unitQtyController);
    unitNameTECs.add(unitNameController);
    return Card(
      elevation: 0,
      color: Colors.blue[900],
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            child: Text('Product Item ${cards.length + 1}'),
          ),
          Flexible(
              child: SizedBox(
            width: 30,
          )),
          Flexible(
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Empty';
                }
                return null;
              },
              controller: itemController,
              decoration: InputDecoration(labelText: 'ProductItem'),
            ),
          ),
          Flexible(
              child: SizedBox(
            width: 30,
          )),
          Flexible(
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Empty';
                }
                return null;
              },
              controller: unitQtyController,
              decoration: InputDecoration(labelText: 'Unit Qty'),
            ),
          ),
          Flexible(
              child: SizedBox(
            width: 30,
          )),
          Flexible(
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Empty';
                }
                return null;
              },
              controller: unitNameController,
              decoration: InputDecoration(labelText: 'Unit Name'),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    cards.add(createCard());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
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
                  'Choose Finish Good',
                  'Finish Good1',
                  'Finish Good2',
                  'Finish Good3',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 100, right: 100),
                itemCount: cards.length,
                itemBuilder: (BuildContext context, int index) {
                  return cards[index];
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 100),
                    ),
                  ),
                  Flexible(
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
                        'Unit',
                        'Unit 1',
                        'Unit 2',
                        'Unit 3',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  Flexible(
                    child: SizedBox(
                      width: 30,
                    ),
                  ),
                  Flexible(
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Empty';
                        }
                        return null;
                      },
                      controller: produceQtyController,
                      decoration: InputDecoration(labelText: 'Produce Qty'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: RaisedButton(
                child: Text('add new'),
                onPressed: () => setState(() => cards.add(createCard())),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: () {
          print('Pressed');
        },
        hoverColor: Colors.amber,
      ),
    );
  }
}

class PersonEntry {
  final String item;
  final String unitQty;
  final String studyunitName;

  PersonEntry(this.item, this.unitQty, this.studyunitName);
  @override
  String toString() {
    return 'Person: item= $item, unitQty= $unitQty, study unitName= $studyunitName';
  }
}
