import 'package:chat_app/constants.dart';
import 'package:chat_app/screens/sign-up/components/social_login.dart';
import 'package:flutter/material.dart';

class OtherMethodLogin extends StatelessWidget {
  const OtherMethodLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          width: size.width * 0.8,
          child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Divider(
                  color: kPrimaryLightColor,
                  height: 1.5,
                )),
                Text("OR",
                    style: TextStyle(
                        color: kPrimaryColor, fontWeight: FontWeight.bold)),
                Expanded(
                    child: Divider(
                  color: kPrimaryLightColor,
                  height: 1.5,
                ))
              ]),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SocialLogin(
              press: () {},
              iconSrc: "assets/icons/facebook.svg",
            ),
            SocialLogin(
              press: () {},
              iconSrc: "assets/icons/twitter.svg",
            ),
            SocialLogin(
              press: () {},
              iconSrc: "assets/icons/google-plus.svg",
            )
          ],
        )
      ],
    );
  }
}
