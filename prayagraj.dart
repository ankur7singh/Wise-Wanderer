import 'package:firstapp/p1.dart';
import 'package:firstapp/p2.dart';
import 'package:flutter/material.dart';

class Prayag extends StatefulWidget {
  const Prayag({super.key});

  @override
  State<Prayag> createState() => _PrayagState();
}

class _PrayagState extends State<Prayag> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Alignment> _topAlignmentAnimation;
  late Animation<Alignment> _bottomAlignmentAnimation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 8));
    _topAlignmentAnimation = TweenSequence<Alignment>(
      [
        TweenSequenceItem<Alignment>(
            tween: Tween<Alignment>(begin: Alignment.topLeft,end: Alignment.topRight),
            weight: 1),
        TweenSequenceItem<Alignment>(
            tween: Tween<Alignment>(begin: Alignment.topRight,end: Alignment.bottomRight),
            weight: 1),
        TweenSequenceItem<Alignment>(
            tween: Tween<Alignment>(begin: Alignment.bottomRight,end: Alignment.bottomLeft),
            weight: 1),
        TweenSequenceItem<Alignment>(
            tween: Tween<Alignment>(begin: Alignment.bottomLeft,end: Alignment.topLeft),
            weight: 1),
      ],
    ).animate(_controller);

    _bottomAlignmentAnimation = TweenSequence<Alignment>(
      [
        TweenSequenceItem<Alignment>(
            tween: Tween<Alignment>(begin: Alignment.bottomRight,end: Alignment.bottomLeft),
            weight: 1),
        TweenSequenceItem<Alignment>(
            tween: Tween<Alignment>(begin: Alignment.bottomLeft,end: Alignment.topLeft),
            weight: 1),
        TweenSequenceItem<Alignment>(
            tween: Tween<Alignment>(begin: Alignment.topLeft,end: Alignment.topRight),
            weight: 1),
        TweenSequenceItem<Alignment>(
            tween: Tween<Alignment>(begin: Alignment.topRight,end: Alignment.bottomRight),
            weight: 1),
      ],
    ).animate(_controller);
    _controller.repeat();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
          animation: _controller,
          builder: (context,_) {
            return Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.yellow.shade100,
                    Colors.orange.shade300,
                  ],
                    begin: _topAlignmentAnimation.value,
                    end: _bottomAlignmentAnimation.value,
                  )
              ),
              child: const Stack(
                children: [
                  Prayag1(),
                  Prayag2(),
                ],
              ),
            );
          }
      ),
    );
  }
}