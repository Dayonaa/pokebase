import 'package:flutter/material.dart';
import 'dart:math';

class CurvedTextPainter extends CustomPainter {
  final String text;
  final double radius;
  final double fontSize;
  final Color color;

  CurvedTextPainter(this.text, this.radius, this.fontSize, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final textStyle = TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
    );

    final textPainter = TextPainter(textDirection: TextDirection.ltr);

    final anglePerChar = pi / (text.length + 1); // semi-circle
    final center = Offset(size.width / 2, radius);

    for (int i = 0; i < text.length; i++) {
      final char = text[i];
      final angle =
          -pi / 2 + anglePerChar * (i + 1); // mulai dari kiri ke kanan
      final x = center.dx + radius * cos(angle);
      final y = center.dy + radius * sin(angle);

      canvas.save();
      canvas.translate(x, y);
      canvas.rotate(angle + pi / 2); // rotasi sesuai path
      textPainter.text = TextSpan(text: char, style: textStyle);
      textPainter.layout();
      textPainter.paint(
        canvas,
        Offset(-textPainter.width / 2, -textPainter.height / 2),
      );
      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
