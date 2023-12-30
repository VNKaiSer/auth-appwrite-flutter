import 'package:chat_app/components/already_have_account_check.dart';
import 'package:chat_app/components/rounded_button.dart';
import 'package:chat_app/components/rounded_input_field.dart';
import 'package:chat_app/components/rounded_password_field.dart';
import 'package:chat_app/screens/login/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset("assets/icons/login.svg",
              height: size.height * 0.35),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
              text: "Username", icon: Icons.person, onChanged: (value) {}),
          RoundedPasswordField(onChanged: (value) {}),
          RoundedButton(press: () {}, text: "LOGIN"),
          SizedBox(height: size.height * 0.03),
          AlredyHaveAccountCheck(
            login: true,
            press: () {},
          )
        ],
      ),
    );
  }
}
