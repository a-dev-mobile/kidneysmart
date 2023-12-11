import 'dart:math' as math;
import 'package:flutter/material.dart';

class AppSliderTrackShape extends SliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    Offset offset = Offset.zero,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final thumbWidth =
        sliderTheme.thumbShape?.getPreferredSize(isEnabled, isDiscrete).width ??
            0;

    final overlayWidth = sliderTheme.overlayShape
            ?.getPreferredSize(isEnabled, isDiscrete)
            .width ??
        0;

    final trackHeight = sliderTheme.trackHeight ?? 0;

    final trackLeft = offset.dx + math.max(overlayWidth / 2, thumbWidth / 2);

    final trackTop = offset.dy + (parentBox.size.height - trackHeight) / 2;

    final trackRight =
        trackLeft + parentBox.size.width - math.max(thumbWidth, overlayWidth);

    final trackBottom = trackTop + trackHeight;

    return Rect.fromLTRB(
      math.min(trackLeft, trackRight),
      trackTop,
      math.max(trackLeft, trackRight),
      trackBottom,
    );
  }

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required Offset thumbCenter,
    required TextDirection textDirection,
    Offset? secondaryOffset,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight ?? 0;

    if (trackHeight <= 0) return;

    const lateralIndent = 20;

    final activeTrackColorTween = ColorTween(
      begin: sliderTheme.disabledActiveTrackColor,
      end: sliderTheme.activeTrackColor,
    );

    final inactiveTrackColorTween = ColorTween(
      begin: sliderTheme.disabledInactiveTrackColor,
      end: sliderTheme.inactiveTrackColor,
    );

    final activePaint = Paint()
      ..color =
          activeTrackColorTween.evaluate(enableAnimation) ?? Colors.transparent;

    final inactivePaint = Paint()
      ..color = inactiveTrackColorTween.evaluate(enableAnimation) ??
          Colors.transparent;

    Paint leftTrackPaint;
    Paint rightTrackPaint;

    switch (textDirection) {
      case TextDirection.ltr:
        leftTrackPaint = activePaint;
        rightTrackPaint = inactivePaint;
      case TextDirection.rtl:
        leftTrackPaint = inactivePaint;
        rightTrackPaint = activePaint;
    }

    final trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    final leftTrackSegment = Rect.fromLTRB(
      trackRect.left - lateralIndent,
      trackRect.top,
      thumbCenter.dx,
      trackRect.bottom,
    );

    if (!leftTrackSegment.isEmpty) {
      context.canvas.drawRect(leftTrackSegment, leftTrackPaint);
    }

    final rightTrackSegment = Rect.fromLTRB(
      thumbCenter.dx,
      trackRect.top,
      trackRect.right + lateralIndent,
      trackRect.bottom,
    );

    if (!rightTrackSegment.isEmpty) {
      context.canvas.drawRect(rightTrackSegment, rightTrackPaint);
    }
  }
}
