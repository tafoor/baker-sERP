import 'package:flutter/material.dart';

class Tab1 extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

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
              child: TextFormField(
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
                decoration: InputDecoration(
                  labelText: 'Unit of Quantity',
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
