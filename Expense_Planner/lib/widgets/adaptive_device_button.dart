import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';

class AdaptiveButton extends StatelessWidget {
  final String text;
  final Function handler;
  AdaptiveButton(this.text, this.handler);
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: handler,
          )
        : FlatButton(
            textColor: Theme.of(context).primaryColor,
            child: Text(
              'Choose date!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            onPressed: handler,
          );
  }
}
