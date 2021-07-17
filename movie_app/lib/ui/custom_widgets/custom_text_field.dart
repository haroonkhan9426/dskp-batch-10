import 'package:flutter/material.dart';
import 'package:movie_app/core/contants/styles.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String hint;
  final isHidePassword;

  CustomTextField(this.hint, this.title, this.isHidePassword);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$title', style: pinkTextStyle),
        SizedBox(height: 7),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.only(left: 10),
          child: TextField(
            obscureText: isHidePassword,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '$hint',
            ),
          ),
        ),
      ],
    );
  }
}
