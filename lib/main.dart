import 'package:flutter/material.dart';
import 'package:minimal_ecomm/models/shop.dart';
import 'package:minimal_ecomm/pages/check_out_page.dart';
import 'package:minimal_ecomm/pages/login_page.dart';
import 'package:minimal_ecomm/pages/sign_up_page.dart';
import 'package:minimal_ecomm/routes.dart';
import 'package:provider/provider.dart';
import 'package:minimal_ecomm/pages/cart_page.dart';
import 'package:minimal_ecomm/pages/intro_page.dart';
import 'package:minimal_ecomm/pages/shop_page.dart';
import 'package:minimal_ecomm/themes/light_mode.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const EcommerceApp(),
  ));
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minimal Shop',
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        introPageRoute: (context) => const IntroPage(),
        shopPageRoute: (context) => const ShopPage(),
        cartPageRoute: (context) => const CartPage(),
        checkoutPageRoute: (context) => const CheckOutPage(),
        loginPageRoute: (context) => const LoginPage(),
        signUpPageRoute: (context) => const SignUpPage(),
      },
    );
  }
}
