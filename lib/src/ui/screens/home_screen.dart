import 'package:flutter/material.dart';

import 'login_screen.dart';
import '../widgets/custom_flat_button.dart';
import '../../utilities/constants.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 48.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Welcome Back',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kPinkColor,
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                ),
              ),
              kMediumHorizontalSpacing,
              Expanded(
                child: Image.asset(
                  'assets/auth_1.png',
                ),
              ),
              kMediumHorizontalSpacing,
              CustomFlatButton(
                color: kPinkColor,
                onPressed: () {
                  Navigator.of(context).pushNamed(LoginScreen.routeName);
                },
                text: Text('Sign Up'),
                textColor: Colors.white,
              ),
              kMediumHorizontalSpacing,
              CustomFlatButton(
                color: kGreyColor,
                onPressed: () {},
                text: Text('Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
