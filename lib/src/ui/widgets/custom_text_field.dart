import 'package:flutter/material.dart';

import '../../utilities/constants.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obscureText;
  final IconData suffixIcon;

  CustomTextField({
    @required this.label,
    this.hintText,
    this.obscureText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Text(
              label,
              style:
                  TextStyle(color: Colors.black26, fontWeight: FontWeight.bold),
            ),
          ),
          TextField(
            obscureText: obscureText ?? false,
            decoration: InputDecoration(
              suffixIcon: Icon(
                suffixIcon,
                color: kPinkColor,
              ),
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.black26),
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  style: BorderStyle.none,
                  width: 0,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
              filled: true,
              fillColor: Colors.grey.withOpacity(0.1),
            ),
          ),
        ],
      ),
    );
  }
}
