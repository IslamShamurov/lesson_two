import 'package:flutter/material.dart';

class HeartAnimation extends StatefulWidget {
  static const String id = '/heart_animation';

  const HeartAnimation({Key? key}) : super(key: key);

  @override
  State<HeartAnimation> createState() => _HeartAnimationState();
}

class _HeartAnimationState extends State<HeartAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<Size>? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _animation = Tween<Size>(
      begin: const Size(100, 100),
      end: const Size(130, 130),
    ).animate(
      CurvedAnimation(parent: _controller!, curve: Curves.easeIn),
    );
    _controller!.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          _controller!.repeat();
        }
      },
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
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedBuilder(
          animation: _animation!,
          builder: (ctx, ch) => SizedBox(
            width: _animation!.value.width,
            height: _animation!.value.height,
            child: Image.asset('assets/images/img.png'),
          ),
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
