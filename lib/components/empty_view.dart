import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  final String message;

  const EmptyView({super.key, this.message = 'No data available'});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.hourglass_empty,
            size: 64.0,
            color: Colors.grey,
          ),
          const SizedBox(height: 16.0),
          Text(
            message,
            style: const TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
