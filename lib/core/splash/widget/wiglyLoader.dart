import 'dart:math' as math;

import 'package:flutter/material.dart';

class WigglyPainter extends CustomPainter {
  final double progress;

  WigglyPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    const brown = Color(0xFFC58B55);

    for (int i = 0; i < 3; i++) {
      final y = 7.0 + i * 13.0;
      final path = Path();

      for (double x = 0; x <= size.width; x += 1) {
        final waveY = y + math.sin((x / 13) + (progress * 2 * math.pi) + i) * 3;

        if (x == 0) {
          path.moveTo(x, waveY);
        } else {
          path.lineTo(x, waveY);
        }
      }

      final backgroundPaint = Paint()
        ..color = brown.withValues(alpha: 0.22)
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke;

      final brownPaint = Paint()
        ..color = brown
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke;

      canvas.drawPath(path, backgroundPaint);

      canvas.save();
      canvas.clipRect(Rect.fromLTWH(0, 0, size.width * progress, size.height));
      canvas.drawPath(path, brownPaint);
      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(covariant WigglyPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
