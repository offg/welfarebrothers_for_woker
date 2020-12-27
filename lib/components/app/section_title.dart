import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final bool withBack;
  const SectionTitle(this.title, {bool withBack}) : this.withBack = withBack ?? false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Align(
        child: Row(children: [
          if (withBack)
            IconButton(
              icon: Icon(Icons.navigate_before_rounded),
              onPressed: () => Navigator.of(context).pop(),
            ),
          Text(title)
        ]),
        alignment: Alignment.centerLeft,
      ),
    );
  }
}
