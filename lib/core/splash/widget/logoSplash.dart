import 'package:flutter/material.dart';

class logoSplash extends StatelessWidget {
  const logoSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 850,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/logo.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
