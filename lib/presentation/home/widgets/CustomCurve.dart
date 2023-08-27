

import 'package:flutter/material.dart';

class CustomCurve extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    print('Width ${size.width }');
    final path = Path()
        ..moveTo((size.width / (100 / 35)) , size.height)
        ..quadraticBezierTo((size.width / (100 / 35)) , size.height - 50 ,
            ((size.width) / (100 / 50)),((size.height) / (100 / 70)))
        ..quadraticBezierTo(((size.width) / (100 / 50)) + 40 ,((size.height) / (100 / 70) ) ,
            ((size.width) / (100 / 70) ) + 10 ,((size.height) / (100 / 75)) + 10)
        ..quadraticBezierTo(((size.width) / (100 / 70)) + 50 ,((size.height) / (100 / 75) + 40),
            ((size.width) / (100 / 90)),((size.height) / (100 / 20)) + 50 )
        ..quadraticBezierTo(((size.width) / (100 / 90)),((size.height) / (100 / 20)),
            (size.width + 15), ((size.height) / (100 / 10)));
        // ..lineTo((size.width) / (100 / 50),(size.height) / (100 / 70))
        // ..lineTo((size.width) / (100 / 70),(size.height) / (100 / 75))
        // ..lineTo((size.width) / (100 / 90),(size.height) / (100 / 20))
        // ..lineTo(size.width + 15, (size.height) / (100 / 10));

    final paint = Paint()
    ..color = Color(0xfffdfdfd)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}