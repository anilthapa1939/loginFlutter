import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return loginpage();
  }
}

class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String title = 'Country Code Picker';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page'),
      ),
      body: Form(
        child: Container(
          padding: const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CountryCodePicker(initialSelection: 'IN', showCountryOnly: true),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter Phone',
                ),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter password',
                ),
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
              MaterialButton(
                  onPressed: () {}, color: Colors.yellow, child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
