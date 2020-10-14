import 'package:auth_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    Key key,
    this.iconSrc,
  }) : super(key: key);

  final String iconSrc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: kPrimaryColor,
        ),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        iconSrc,
        height: 20,
        width: 20,
        color: kPrimaryColor,
      ),
    );
  }
}
