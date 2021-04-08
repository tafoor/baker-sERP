import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second/modules/authentication.dart';
import 'package:second/screens/SectionsAndGoods/sections.dart';

class Login extends StatefulWidget {
  static const routeName = '/Login';
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  Map<String, String> _authData = {'email': '', 'password': ''};

  void _showErrorDialog(String msg) {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: Text('An Error Occured'),
              content: Text(msg),
              actions: <Widget>[
                FlatButton(
                  child: Text('Okay'),
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                )
              ],
            ));
  }

  Future<void> _submit() async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();

    try {
      await Provider.of<Authentication>(context, listen: false)
          .logIn(_authData['email'], _authData['password']);
    } catch (error) {
      Navigator.pushNamed(context, 'sections');
    }
  }

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
                  labelText: 'Email',
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
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
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
              padding: const EdgeInsets.only(top: 50),
              child: RaisedButton(
                onPressed: () {
                  _submit();
                },
                child: Text('Login'),
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
