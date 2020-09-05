import 'package:first/api.dart';
import 'package:first/login_model.dart';
import 'package:flutter/material.dart';

String message = "";

class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> globalFormKey = new GlobalKey<FormState>();
  String title = 'Country Code Picker';
  LoginRequestModel requestModel;

  @override
  void initState() {
    super.initState();
    requestModel = LoginRequestModel();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page'),
      ),
      body: Form(
        key: globalFormKey,
        child: Container(
          padding: const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter CountryCode',
                ),
                onSaved: (input) => requestModel.countryCode = input,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter Phone',
                ),
                onSaved: (input) => requestModel.emailOrPhone = input,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter password',
                ),
                obscureText: true,
                onSaved: (input) => requestModel.password = input,
              ),
              MaterialButton(
                onPressed: () {
                  APIService apiService = new APIService();
                  apiService.login(requestModel).then((value) {
                    setState(() {
                      message = "Login SUccessful";
                    });
                  });
                  if (validateAndSave()) {
                    print(requestModel.toJson());
                  }
                },
                color: Colors.yellow,
                child: Text('Login'),
              ),
              Text(message),
            ],
          ),
        ),
      ),
    );
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }
}
