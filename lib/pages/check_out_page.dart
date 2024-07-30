import 'package:flutter/material.dart';
import 'package:minimal_ecomm/components/empty_view.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _State();
}

class _State extends State<CheckOutPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: EmptyView(message: "Please configure Payment Gateway"),);
  }
}
