import 'package:flutter/material.dart';

class Panel extends StatelessWidget {
  final Widget child;
  const Panel(this.child);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: child,
      color: Colors.blueGrey.withOpacity(0.2),
    );
  }
}
