import 'package:chat_app/components/rounded_button.dart';
import 'package:chat_app/constants.dart';
import 'package:chat_app/screens/login/login_screen.dart';
import 'package:chat_app/screens/sign-up/sign_up_screen.dart';
import 'package:chat_app/screens/welcome/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: use_key_in_widget_constructors
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "WELCOM TO WORK CHAT",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "Login",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginScreen();
                }));
              },
            ),
            RoundedButton(
              text: "Sign Up",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignUpScreen();
                }));
              },
              color: kPrimaryLightColor,
              textColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
