import 'package:flutter/material.dart';
import 'package:minimal_ecomm/routes.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            const Icon(Icons.watch, size: 130,),
            const SizedBox(height: 25),
            //title
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('InTime Premium Watch Store', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 75)),
            ),
            //subtitle
            const SizedBox(height: 100),
            //Get Started
            MaterialButton(onPressed: () => Navigator.pushNamed(context, loginPageRoute), child: const Icon(Icons.chevron_right, size: 50),)
          ],
        ),
      ),
    );
  }
}
