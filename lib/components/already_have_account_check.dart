import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class AlredyHaveAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
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
          style: const TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press as void Function()?,
          child: Text(
            login ? " Sign Up" : " Sign In",
            style: const TextStyle(
                color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
