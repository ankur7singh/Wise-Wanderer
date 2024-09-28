import 'package:flutter/material.dart';
class Prayag1 extends StatefulWidget {
  const Prayag1({super.key});

  @override
  State<Prayag1> createState() => _Prayag1State();
}

class _Prayag1State extends State<Prayag1> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ClipPath(
        clipper: CurveClipper(),
        child: Image.network('https://media.istockphoto.com/id/1219392992/photo/indian-sunrise.jpg?s=612x612&w=0&k=20&c=_e07B_NVhjid-i0LYcRJFcZ8RrtBU4ha2XyukUCBMew=',
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
