import 'package:flutter/material.dart';
import 'package:spider_head/dashboard.dart';
import 'package:spider_head/ui/circular_slider_wrapper.dart';
import 'package:spider_head/ui/draggable_circular_progress.dart';

import '../domain/model/pharma.dart';

class HeroDisplayBody extends StatefulWidget {
  final Size size;
  final VoidCallback onLeftClicked;
  final VoidCallback onRightClicked;
  final PharmaZ pharma;

  const HeroDisplayBody(this.size,
      {Key? key,
      required this.pharma,
      required this.onLeftClicked,
      required this.onRightClicked})
      : super(key: key);

  @override
  State<HeroDisplayBody> createState() => _HeroDisplayBodyState();
}

class _HeroDisplayBodyState extends State<HeroDisplayBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          width: widget.size.width - 10,
          height: widget.size.width - 10,
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 5,
                ),
                Text(
                  "1.7mL/hr",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.white),
                ),
                Text(
                  widget.pharma.codeName,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: Colors.white),
                ),
                Text(
                  "NDC  ${widget.pharma.tag}",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.grey),
                ),
                Text(
                  " \"${widget.pharma.name}\"",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.grey),
                ),
                const Spacer(
                  flex: 3,
                ),
                Text(
                  "LETHAL",
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(color: Colors.grey),
                ),
                Text(
                  "SAFE",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
        SizedBox(
          height: widget.size.width - 10,
          width: widget.size.width - 10,
          child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: RotatedBox(
                quarterTurns: 2,
                child: CircularSliderWrapper(value: 5),
              )),
        ),
        Positioned(
          bottom: 1,
          right: 1,
          left: 1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.withOpacity(0.5)),
                child: IconButton(
                    visualDensity: VisualDensity.compact,
                    iconSize: 15,
                    onPressed: () {
                      widget.onLeftClicked();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
              ),
              Container(
                alignment: Alignment.center,
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.withOpacity(0.5)),
                child: IconButton(
                    visualDensity: VisualDensity.compact,
                    iconSize: 15,
                    onPressed: () {
                      widget.onRightClicked();
                    },
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        )
      ],
    );
  }
}
