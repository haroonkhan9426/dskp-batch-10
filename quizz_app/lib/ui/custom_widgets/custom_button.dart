import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final text;
  final onPressed;
  final color;

  CustomButton({this.text, this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: color),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(top: 18, bottom: 18),
        child: Text(
          '$text',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
