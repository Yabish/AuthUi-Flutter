import 'package:auth_ui/screens/login/contents/login_background.dart';
import 'package:auth_ui/screens/login/contents/login_content.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      size: size,
      child: LoginContent(size: size),
    );
  }
}
