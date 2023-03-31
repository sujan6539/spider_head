import 'dart:async';

import 'package:flutter/material.dart';

class Canister extends StatefulWidget {
  final Color color;
  final double percent;
  final String tag;

  const Canister(
      {Key? key, required this.color, required this.percent, required this.tag})
      : super(key: key);

  @override
  State<Canister> createState() => _CanisterState();
}

class _CanisterState extends State<Canister>
    with SingleTickerProviderStateMixin {
  late double percent;
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    percent = widget.percent;
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 30));
    _animation = Tween<double>(begin: percent, end: 0).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.decelerate));
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          child: Container(
            height: 135,
            width: 42,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16.0)),
          ),
        ),
        AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [0, _animation.value, _animation.value],
                    colors: [widget.color, widget.color, Colors.grey.shade700],
                  ).createShader(rect);
                },
                child: Container(
                  height: 120,
                  width: 40,
                  child: ImageIcon(
                    AssetImage('assets/images/vial.png'),
                    color: Colors.grey.shade200,
                  ),
                ));
          },
        ),
        Positioned(
            bottom: 10,
            right: 10,
            child: RotatedBox(
                quarterTurns: 1,
                child: Text(
                  widget.tag.toUpperCase(),
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                )))
      ],
    );
  }
}
