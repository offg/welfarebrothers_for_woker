import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
          child: Padding(
        padding: EdgeInsets.all(2),
        child: Container(
            color: Colors.white,
            child: Column(children: [
              Text(
                'welfare',
                style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'brothers',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                ),
              )
            ])),
      )),
    );
  }
}
