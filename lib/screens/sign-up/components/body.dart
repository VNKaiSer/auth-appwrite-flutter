import 'package:chat_app/components/already_have_account_check.dart';
import 'package:chat_app/components/rounded_button.dart';
import 'package:chat_app/components/rounded_input_field.dart';
import 'package:chat_app/components/rounded_password_field.dart';
import 'package:chat_app/constants.dart';
import 'package:chat_app/screens/login/login_screen.dart';
import 'package:chat_app/screens/sign-up/components/background.dart';
import 'package:chat_app/screens/sign-up/components/other_method_login.dart';
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
        child: Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "SIGN UP",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor),
            ),
            SizedBox(height: size.height * 0.02),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.02),
            RoundedInputField(
                text: "Username", icon: Icons.person, onChanged: (value) {}),
            RoundedPasswordField(onChanged: (value) {}),
            RoundedButton(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                },
                text: "SIGN UP"),
            AlredyHaveAccountCheck(
                login: false,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                }),
            const OtherMethodLogin(),
          ]),
    ));
  }
}
