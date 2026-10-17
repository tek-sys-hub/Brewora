import 'package:flutter/material.dart';

import '../../apptheme/appthemes.dart';

class sloganSplash extends StatelessWidget {
  const sloganSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Better Operations And Better Coffee',
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: AppThemes.darkElevatedSurface,
        letterSpacing: 0.5,
      ),
    );
  }
}
