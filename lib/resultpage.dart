import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  String email, password;
  ResultPage({
    super.key,
    required this.password,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text('email: ${email}'), Text('password: ${password}')],
      ),
    );
  }
}
