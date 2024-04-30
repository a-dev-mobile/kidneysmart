import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidneysmart/gen/assets.gen.dart';

class SpinningSvg extends StatefulWidget {
  const SpinningSvg({
    super.key,
    this.color,
  });

  final Color? color;

  @override
  State<SpinningSvg> createState() => _SpinningSvgState();
}

/// State for widget SpinningSvg
class _SpinningSvgState extends State<SpinningSvg>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: _controller.value * 2.0 * pi,
          child: SvgPicture.asset(
            AssetPaths.loadSvg,
            colorFilter: widget.color != null
                ? ColorFilter.mode(widget.color!, BlendMode.srcIn)
                : null,
          ),
        );
      },
    );
  }
}
