import 'package:flutter/material.dart';

class MyRectangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = const Color.fromARGB(255, 255, 189, 230);
    paint.style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(size.width * 0.25, 0);
    path.lineTo(size.width * 0.25, size.height * 0.45);
    path.lineTo(size.width, size.height * 0.45);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
