import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spider_head/domain/app_providers.dart';

class Canister extends ConsumerStatefulWidget {
  final Color color;
  final String codeName;
  final double height;
  final double oldValue;

  const Canister(
      {Key? key,
      required this.height,
      required this.color,
      required this.codeName,
      required this.oldValue})
      : super(key: key);

  @override
  ConsumerState<Canister> createState() => _CanisterState();
}

class _CanisterState extends ConsumerState<Canister>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;
  double oldValue = 0;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 30));
    _animation = Tween<double>(begin: 1, end: 0).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.decelerate));
  }

  @override
  Widget build(BuildContext context) {
    // double width = 0.3 * widget.height;
    var watchVar = ref.watch(appStateProvider);
    return Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          child: Container(
            height: widget.height,
            width: 40,
            foregroundDecoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(16.0),
            ),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [BoxShadow(spreadRadius: 2.0)]),
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
                    stops: [
                      0,
                      _animation.value * watchVar.pharmaState[widget.codeName],
                      _animation.value * watchVar.pharmaState[widget.codeName]
                    ],
                    colors: [widget.color, widget.color, Colors.grey.shade700],
                  ).createShader(rect);
                },
                child: Container(
                  height: widget.height - 10,
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
                  widget.codeName.toUpperCase(),
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                )))
      ],
    );
  }
}
