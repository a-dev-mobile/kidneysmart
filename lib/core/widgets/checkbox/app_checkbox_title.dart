import 'package:equatable/equatable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kidneysmart/app/style/color/app_color.dart';
import 'package:kidneysmart/app/style/typography/app_text_styles.dart';
import 'package:kidneysmart/core/enum/enum_state_checkbox.dart';
import 'package:kidneysmart/core/widgets/checkbox/app_checkbox.dart';

class AppCheckboxTitle extends StatefulWidget {
  const AppCheckboxTitle({
    required this.stateValue,
    required this.onChanged,
    required this.text,
    this.clickableSegments,
    super.key,
    this.priceDesc,
    this.titleStyle,
  });
  final TextStyle? titleStyle;
  final EnumStateCheckboxValue stateValue;
  final ValueChanged<EnumStateCheckboxValue> onChanged;
  final String text;
  final String? priceDesc;
  final List<ClickableSegment>? clickableSegments;

  @override
  State<AppCheckboxTitle> createState() => _AppCheckboxTitleState();
}

class _AppCheckboxTitleState extends State<AppCheckboxTitle> {
  List<TapGestureRecognizer> _textRecognizers = [];
  final List<ClickableSegment> clickableSeg = [];
  @override
  void initState() {
    super.initState();
    _initializeRecognizers();
  }

  @override
  void didUpdateWidget(covariant AppCheckboxTitle oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.stateValue != widget.stateValue) {
      _initializeRecognizers();
    }
  }

  // Initialize recognizers for clickable segments
  void _initializeRecognizers() {
    _textRecognizers = widget.clickableSegments
            ?.map(
              (segment) => TapGestureRecognizer()..onTap = segment.onClicked,
            )
            .toList() ??
        [];
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.stateValue.maybeMapValue(orElse: false, disabled: true)
          ? null
          : () => widget.onChanged(
                widget.stateValue.maybeMapValue(
                  orElse: EnumStateCheckboxValue.checked,
                  checked: EnumStateCheckboxValue.unchecked,
                ),
              ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppCheckbox(
            stateValue: widget.stateValue,
            onChanged: null,
          ),
          const SizedBox(width: 10),
          Expanded(child: _buildTextContent()),
        ],
      ),
    );
  }

  Widget _buildTextContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 3),
        RichText(
          text: TextSpan(
            style: widget.titleStyle ??
                AppTextStyle.s14w400h18.copyWith(color: AppColors.greyText),
            children: _buildTextSegments(),
          ),
        ),
        if (widget.priceDesc != null)
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              widget.priceDesc!,
              style:
                  AppTextStyle.s14w400h18.copyWith(color: AppColors.greyText),
            ),
          ),
      ],
    );
  }

  List<TextSpan> _buildTextSegments() {
    final segments = <TextSpan>[];

    final text = widget.text;
    final positions = <_SegmentPosition>[];

    var currentIndex = 0; // Initialize currentIndex here

    if (widget.clickableSegments != null) {
      for (var i = 0; i < widget.clickableSegments!.length; i++) {
        final segment = widget.clickableSegments![i];
        var start = 0;
        while (start < text.length && segment.text.isNotEmpty) {
          final index =
              text.toLowerCase().indexOf(segment.text.toLowerCase(), start);

          if (index != -1) {
            positions
                .add(_SegmentPosition(index, index + segment.text.length, i));
            start = index + segment.text.length;
          } else {
            break;
          }
        }
      }

      positions.sort((a, b) => a.start.compareTo(b.start));

      for (final position in positions) {
        if (currentIndex < position.start) {
          segments.add(
            TextSpan(text: text.substring(currentIndex, position.start)),
          );
          currentIndex = position.start;
        }

        segments.add(
          TextSpan(
            text: text.substring(position.start, position.end),
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              decoration: TextDecoration.underline,
            ),
            recognizer: _textRecognizers[position.segmentIndex],
          ),
        );
        currentIndex = position.end;
      }
    }

    if (currentIndex < text.length) {
      segments.add(TextSpan(text: text.substring(currentIndex)));
    }

    return segments;
  }

  @override
  void dispose() {
    for (final recognizer in _textRecognizers) {
      recognizer.dispose();
    }
    super.dispose();
  }
}

class _SegmentPosition {
  _SegmentPosition(this.start, this.end, this.segmentIndex);
  final int start;
  final int end;
  final int segmentIndex;
}

class ClickableSegment extends Equatable {
  const ClickableSegment({required this.text, required this.onClicked});
  final String text;
  final VoidCallback onClicked;

  @override
  List<Object?> get props => [text, onClicked];
}
