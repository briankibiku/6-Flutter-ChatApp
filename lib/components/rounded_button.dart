import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.action, this.color, @required this.onPress});

  final String action;
  final Color color;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            action,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
