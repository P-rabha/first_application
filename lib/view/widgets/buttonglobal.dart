import 'package:flutter/material.dart';
import 'package:loginscreen/utils/globalcolors.dart';
import 'package:flutter/widgets.dart';
import 'package:loginscreen/view/loginview.dart';

import '../../resultpage.dart';

class ButtonGlobal extends StatelessWidget {
  final VoidCallback onPressed;
  ButtonGlobal({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 10, 22, 124),
          ),
          onPressed: onPressed,
          child: Text('submit'),
        ),
      ),
    );
  }
}
