import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Widget child;
  final String title;
  final Function onpress;
  final Color color;

  const RoundedButton(
      {this.title, @required this.onpress, this.child, this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onpress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
