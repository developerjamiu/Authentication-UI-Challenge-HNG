import 'package:flutter/material.dart';

import 'ui/screens/home_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      title: 'Auth',
      home: HomeScreen(),
    );
  }
}
