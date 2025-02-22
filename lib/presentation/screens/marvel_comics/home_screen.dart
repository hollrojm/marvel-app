import 'package:flutter/material.dart';

import 'package:marvel_app/config/constants/environment.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Text(Environment.marvelApiPublicKey),
          Text(Environment.marvelApiPrivateKey),
        ],
      ),
    ));
  }
}
