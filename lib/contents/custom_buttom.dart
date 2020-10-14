import 'package:auth_ui/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    @required this.size,
    this.text,
    this.textColor,
    this.bgColor,
    this.press,
  }) : super(key: key);

  final Size size;
  final String text;
  final Color textColor, bgColor;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FlatButton(
          padding: EdgeInsets.symmetric(
            horizontal: defaultPadding * 2,
            vertical: defaultPadding,
          ),
          color: bgColor,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
