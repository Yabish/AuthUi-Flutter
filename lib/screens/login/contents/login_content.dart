import 'package:auth_ui/constants.dart';
import 'package:auth_ui/contents/custom_buttom.dart';
import 'package:auth_ui/contents/custom_textfiled.dart';
import 'package:auth_ui/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({
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
          'LOGIN',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: defaultPadding,
        ),
        SvgPicture.asset(
          'assets/icons/login.svg',
          width: size.width * 0.6,
        ),
        TextFieldContainer(
          size: size,
          child: TextField(
            onChanged: (value) {},
            cursorColor: kPrimaryColor,
            style: TextStyle(
              color: kPrimaryColor,
            ),
            decoration: InputDecoration(
              hintText: "Email",
              hintStyle: TextStyle(
                color: kPrimaryColor,
              ),
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.person_outline,
                color: kPrimaryColor,
              ),
            ),
          ),
        ),
        TextFieldContainer(
          size: size,
          child: TextField(
            onChanged: (value) {},
            obscureText: true,
            cursorColor: kPrimaryColor,
            style: TextStyle(
              color: kPrimaryColor,
            ),
            decoration: InputDecoration(
              hintText: "Password",
              hintStyle: TextStyle(
                color: kPrimaryColor,
              ),
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.lock_outline,
                color: kPrimaryColor,
              ),
              suffixIcon: IconButton(
                icon: Icon(Icons.visibility_outlined),
                color: kPrimaryColor,
                onPressed: () {},
              ),
            ),
          ),
        ),
        SizedBox(height: defaultPadding),
        CustomButton(
          size: size,
          text: 'LOGIN',
          textColor: Colors.white,
          bgColor: kPrimaryColor,
          press: () {},
        ),
        SizedBox(height: defaultPadding),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an Account? | ',
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
