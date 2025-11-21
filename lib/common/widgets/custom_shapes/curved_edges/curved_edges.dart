import 'package:flutter/material.dart';

class ECustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height);

    final firstCurve = Offset(0, size.height - 20);
    final firstLastCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(
      firstCurve.dx,
      firstCurve.dy,
      firstLastCurve.dx,
      firstLastCurve.dy,
    );

    path.lineTo(size.width - 30, size.height - 20);

    final secondCurve = Offset(size.width, size.height - 20);
    final secondLastCurve = Offset(size.width, size.height);

    path.quadraticBezierTo(
      secondCurve.dx,
      secondCurve.dy,
      secondLastCurve.dx,
      secondLastCurve.dy,
    );

    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
