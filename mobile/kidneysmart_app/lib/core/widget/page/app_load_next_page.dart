import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:kidneysmart/core/widget/widget.dart';

/// {@template load_page}
/// Widget with disabling user action during load
/// {@endtemplate}
class AppLoadNextPage extends StatelessWidget {
  const AppLoadNextPage({
    required this.child,
    super.key,
    this.isLoad = false,
  });
  final Widget child;
  final bool isLoad;
  @override
  Widget build(BuildContext context) => Stack(
        children: <Widget>[
          Positioned.fill(
            child: child,
          ),
          Positioned.fill(
            child: AbsorbPointer(
              absorbing: isLoad,
              child: AnimatedSwitcher(
                duration: const Duration(microseconds: 350),
                child: isLoad
                    ? ClipRRect(
                        child: BackdropFilter(
                          filter: ui.ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                          child: const Center(
                            child: RepaintBoundary(
                              child: AppLoadPage(),
                            ),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ),
          ),
        ],
      );
}
