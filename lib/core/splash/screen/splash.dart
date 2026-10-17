import 'package:flutter/material.dart';

import '../../apptheme/appthemes.dart';
import '../widget/logoSplash.dart';
import '../widget/sloganSplash.dart';
import '../widget/wiglyLoader.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late final AnimationController _loaderController;

  @override
  void initState() {
    super.initState();

    _loaderController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat();

    _startApp();
  }

  Future<void> _startApp() async {
    await Future.delayed(const Duration(seconds: 4));

    if (!mounted) return;

    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (_) => const NextScreen()));
  }

  @override
  void dispose() {
    _loaderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splashBg.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const logoSplash(),
            const SizedBox(height: 8),
            const sloganSplash(),
            const SizedBox(height: 40),

            SizedBox(
              width: 130,
              height: 42,
              child: AnimatedBuilder(
                animation: _loaderController,
                builder: (context, child) {
                  return CustomPaint(
                    painter: WigglyPainter(_loaderController.value),
                  );
                },
              ),
            ),

            const SizedBox(height: 14),
            const Text(
              'Preparing your cafe experience...',
              style: TextStyle(
                color: AppThemes.darkSurface,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Brewora')));
  }
}
