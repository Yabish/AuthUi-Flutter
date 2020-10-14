import 'package:auth_ui/screens/welcome/contents/welcome_background.dart';
import 'package:auth_ui/screens/welcome/contents/welcome_content.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: WelcomeContent(size: size),
      ),
    );
  }
}
