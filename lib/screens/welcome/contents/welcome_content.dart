import 'package:auth_ui/constants.dart';
import 'package:auth_ui/contents/custom_buttom.dart';
import 'package:auth_ui/screens/login/login_screen.dart';
import 'package:auth_ui/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'WELCOME',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: size.height * 0.06,
        ),
        SvgPicture.asset(
          'assets/icons/chat.svg',
          width: size.width * 0.8,
        ),
        SizedBox(
          height: size.height * 0.06,
        ),
        CustomButton(
          size: size,
          text: 'LOGIN',
          textColor: Colors.white,
          bgColor: kPrimaryColor,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return LoginScreen();
                },
              ),
            );
          },
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        CustomButton(
          size: size,
          text: 'SIGNUP',
          textColor: kPrimaryColor,
          bgColor: kPrimaryLightColor,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignUpScreen();
                },
              ),
            );
          },
        )
      ],
    );
  }
}
