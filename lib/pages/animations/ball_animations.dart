import 'package:flutter/material.dart';

class BallAnimation extends StatefulWidget {
  static const String id = '/ball_animation';

  const BallAnimation({Key? key}) : super(key: key);

  @override
  State<BallAnimation> createState() => _BallAnimationState();
}

class _BallAnimationState extends State<BallAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween(
      begin: 200.0,
      end: 120.0,
    ).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: const Interval(0.0, 0.1, curve: Curves.elasticIn),
      )..addStatusListener(
          (AnimationStatus status) {
            if (status == AnimationStatus.completed) {
              _controller!.repeat(reverse: true);
            }
          },
        ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: AnimatedBuilder(
        animation: _animation!,
        builder: (ctx, ch) => Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.only(
            top: _animation!.value,
            left: 125,
          ),
          child: ClipRRect(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            borderRadius: BorderRadius.circular(90),

            child: const Image(

              fit: BoxFit.cover,
              image: AssetImage('assets/images/img_1.png',),

            ),
          )
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: const Icon(Icons.play_circle_fill),
        onPressed: () {
          _controller!.forward();
        },
      ),
    );
  }
}
