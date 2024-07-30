import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  final String title;
  final Icon icon;
  final void Function()? onTap;
  const MyTile({
    super.key,
    required this.icon,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ListTile(
        leading: icon,
        title: Text(title),
        onTap: onTap,
      ),
    );
  }
}
