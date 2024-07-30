import 'package:flutter/material.dart';

class BigIcon extends StatelessWidget {
  final IconData iconData;
  const BigIcon({super.key, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: 72,
      color: Theme.of(context).colorScheme.inversePrimary,
    );
  }
}
