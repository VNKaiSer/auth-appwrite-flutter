import 'package:chat_app/components/text_field_container.dart';
import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final String text;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    super.key,
    required this.text,
    required this.icon,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: text,
            icon: Icon(
              icon,
              color: kPrimaryColor,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
