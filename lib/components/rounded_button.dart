import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color? color, textColor;
  const RoundedButton(
      {super.key,
      this.color = kPrimaryColor,
      this.textColor = Colors.white,
      required this.press,
      required this.text});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: TextButton(
          onPressed: press,
          style: TextButton.styleFrom(
              backgroundColor: color,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              textStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              )),
          child: Text(
            text,
            style: TextStyle(color: textColor),
          )),
    );
  }
}
