import 'package:flutter/material.dart';

class DefaultAvatar extends StatelessWidget {
  final double radius;
  DefaultAvatar({double radius}) : this.radius = radius ?? 16;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.6),
      backgroundImage: AssetImage('assets/images/avatar_default.png'),
    );
  }
}
