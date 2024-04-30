import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kidneysmart/core/widgets/slider/app_slider_track_shape.dart';

class SliderMy extends StatelessWidget {
  const SliderMy({
    required this.value,
    required this.max,
    required this.onChanged,
    required this.onIncrement,
    required this.onIncrementLong,
    required this.onDecrement,
    required this.onDecrementLong,
    super.key,
    this.isCustom = false,
    this.min,
    this.divisions,
  });
  final double value;
  final double max;
  final double? min;
  final int? divisions;
  final void Function(double) onChanged;
  final void Function() onIncrement;
  final void Function() onIncrementLong;
  final void Function() onDecrement;
  final void Function() onDecrementLong;
  final bool isCustom;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 3,
                trackShape: AppSliderTrackShape(),
              ),
              child: Slider(
                value: value,
                divisions: divisions,
                max: max,
                min: min ?? 0,
                onChanged: onChanged,
              ),
            ),
          ),
          Positioned(
            left: -8,
            child: GestureDetector(
              onLongPress: onDecrementLong,
              child: IconButton(
                onPressed: onDecrement,
                icon: SvgPicture.asset(
                  'assets/svg/slider_minus.svg',
                  width: 30,
                ),
              ),
            ),
          ),
          Positioned(
            right: -8,
            child: GestureDetector(
              onLongPress: onIncrementLong,
              child: IconButton(
                onPressed: onIncrement,
                icon: SvgPicture.asset(
                  'assets/svg/slider_plus.svg',
                  width: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
