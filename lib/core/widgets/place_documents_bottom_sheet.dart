import 'package:flutter/material.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';

class PlaceDocumentsBottomSheet extends StatelessWidget {
  const PlaceDocumentsBottomSheet({
    required this.content,
    required this.title,
    super.key,
  });
  final List<Widget> content;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyle.s20w600h24,
              ),
              const SizedBox(height: 20),
              ...content,
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.close),
          ),
        ),
      ],
    );
  }
}
