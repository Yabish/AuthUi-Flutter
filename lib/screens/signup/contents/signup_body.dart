import 'package:auth_ui/constants.dart';
import 'package:auth_ui/contents/custom_buttom.dart';
import 'package:auth_ui/contents/custom_textfiled.dart';
import 'package:auth_ui/screens/login/login_screen.dart';
import 'package:auth_ui/screens/signup/contents/orDivider.dart';
import 'package:auth_ui/screens/signup/contents/signup_background.dart';
import 'package:auth_ui/screens/signup/contents/socialIcons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Backgorund(
        size: size,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SIGNUP',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: defaultPadding / 2),
            SvgPicture.asset(
              'assets/icons/signup.svg',
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
            CustomButton(
              size: size,
              text: 'SIGNUP',
              textColor: Colors.white,
              bgColor: kPrimaryColor,
              press: () {},
            ),
            SizedBox(height: defaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an Account? | ',
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
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            OrDivider(size: size),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  iconSrc: 'assets/icons/facebook.svg',
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/twitter.svg',
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/google-plus.svg',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
