import 'package:first/login_page.dart';
import 'package:flutter/material.dart';

String message = '';
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
