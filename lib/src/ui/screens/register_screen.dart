import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';
import '../widgets/custom_text_field.dart';
import '../../utilities/constants.dart';
import '../widgets/custom_flat_button.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = 'register';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TapGestureRecognizer onTapRecognizer;

  @override
  void initState() {
    onTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
      };
    super.initState();
  }

  @override
  void dispose() {
    onTapRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 8.0,
                left: 16.0,
                right: 16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Card(
                      color: kGreyColor,
                      child: Icon(
                        Icons.keyboard_backspace,
                      ),
                    ),
                  ),
                  Hero(
                    tag: 'Image',
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset(
                        'assets/auth_01_nobackground.png',
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(32.0),
              decoration: BoxDecoration(
                color: kGreyColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CustomTextField(
                    label: 'Full Name',
                    hintText: 'John Doe',
                  ),
                  kSmallHorizontalSpacing,
                  CustomTextField(
                    label: 'Email Address',
                    hintText: 'example@gmail.com',
                  ),
                  kSmallHorizontalSpacing,
                  CustomTextField(
                    label: 'Passwword',
                    hintText: 'password',
                    obscureText: true,
                    suffixIcon: Icons.remove_red_eye,
                  ),
                  kSmallHorizontalSpacing,
                  Text(
                    'Forgot Password?',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kBigHorizontalSpacing,
                  CustomFlatButton(
                    color: kPinkColor,
                    onPressed: () {},
                    text: Text('Log In'),
                    textColor: Colors.white,
                  ),
                  kMediumHorizontalSpacing,
                  Text(
                    'Or',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kPinkColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  kMediumHorizontalSpacing,
                  socialIcons(),
                  kMediumHorizontalSpacing,
                  signInText(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget socialButton(String socialIconUrl, String socialName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          socialIconUrl,
          height: 16,
          width: 16,
        ),
        kSmallVerticalSpacing,
        Text(
          socialName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade700,
          ),
        ),
      ],
    );
  }

  Widget socialIcons() {
    return Row(
      children: <Widget>[
        Expanded(
          child: CustomFlatButton(
            color: Colors.white,
            onPressed: () {},
            text: socialButton(
              'assets/facebook.png',
              'Facebook',
            ),
          ),
        ),
        kMediumVerticalSpacing,
        Expanded(
          child: CustomFlatButton(
            color: Colors.white,
            onPressed: () {},
            text: socialButton(
              'assets/google.png',
              'Google',
            ),
          ),
        ),
      ],
    );
  }

  Widget signInText() {
    return RichText(
      text: TextSpan(
        text: "Already have an account? ",
        style: TextStyle(
          color: Colors.black54,
          fontSize: 14,
        ),
        children: <TextSpan>[
          TextSpan(
            text: 'Sign In',
            recognizer: onTapRecognizer,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kPinkColor,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
