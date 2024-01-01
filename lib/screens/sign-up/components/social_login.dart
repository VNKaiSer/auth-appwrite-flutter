import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialLogin extends StatelessWidget {
  final Function? press;
  final String? iconSrc;

  const SocialLogin({
    super.key,
    this.press,
    this.iconSrc,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: kPrimaryLightColor),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          iconSrc!,
          width: 20,
          height: 20,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
