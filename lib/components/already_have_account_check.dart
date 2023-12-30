import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class AlredyHaveAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlredyHaveAccountCheck({
    super.key,
    required this.login,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an Account?" : "Already have an Account ? ",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
