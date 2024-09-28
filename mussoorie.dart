import 'package:flutter/material.dart';
class Mussoorie extends StatefulWidget {
  const Mussoorie({super.key});

  @override
  State<Mussoorie> createState() => _MussoorieState();
}

class _MussoorieState extends State<Mussoorie> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ClipPath(
        clipper: CurveClipper(),
        child: Image.network('https://www.euttaranchal.com/tourism/photos/mussoorie-8808848.jpg',
        fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5,
          color: const Color(0x99000000),
          colorBlendMode: BlendMode.darken,
        ),
      ),
    );
  }
}
class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    Offset curveStartPoint = const Offset(0,40);
    Offset curveEndPoint = Offset(size.width, size.height * 0.95);
    path.lineTo(curveStartPoint.dx, curveStartPoint.dy - 5);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.85, curveEndPoint.dx - 60, curveEndPoint.dy + 10);
    path.quadraticBezierTo(size.width * 0.99, size.height * 0.99, curveEndPoint.dx, curveEndPoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
