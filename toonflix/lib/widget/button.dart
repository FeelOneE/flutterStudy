import 'package:flutter/cupertino.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  Button(
      {super.key,
      required this.text,
      required this.bgColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: Text(
          text,
          style: TextStyle(fontSize: 18, color: textColor),
        ),
      ),
    );
  }
}
