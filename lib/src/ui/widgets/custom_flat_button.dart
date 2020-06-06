import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final Function onPressed;
  final Widget text;
  final Color color;
  final Color textColor;

  CustomFlatButton({
    @required this.color,
    @required this.text,
    @required this.onPressed,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: text,
      color: color,
      textColor: textColor,
      padding: EdgeInsets.symmetric(vertical: 20.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
    );
  }
}
