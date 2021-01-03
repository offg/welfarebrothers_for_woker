import 'package:flutter/material.dart';

class Panel extends StatelessWidget {
  final Widget child;
  final double padding;
  const Panel({Widget child, double padding})
      : child = child,
        padding = padding ?? 12;
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        color: Colors.blueGrey.withOpacity(0.1),
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: child,
        ));
  }
}
