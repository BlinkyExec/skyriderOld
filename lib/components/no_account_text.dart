import 'package:flutter/material.dart';
import 'package:skyrider/screens/sign_up/sign_up_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "הרשמה",
            style: TextStyle(fontSize: getProportionateScreenWidth(16), fontWeight: FontWeight.bold, color: Color(0xFF6C63FF)),
          ),
        ),
        Text(
          " ?אין לך חשבון",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
