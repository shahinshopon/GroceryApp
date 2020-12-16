import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Color(0xffc0213f)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.40);
    path.quadraticBezierTo(size.width * 0.94, size.height * 0.52,
        size.width * 0.90, size.height * 0.50);
    path.cubicTo(size.width * 0.65, size.height * 0.45, size.width * 0.30,
        size.height * 0.35, size.width * 0.07, size.height * 0.30);
    path.quadraticBezierTo(
        size.width * 0.03, size.height * 0.30, 0, size.height * 0.20);
    path.lineTo(0, size.height * 0.75);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
