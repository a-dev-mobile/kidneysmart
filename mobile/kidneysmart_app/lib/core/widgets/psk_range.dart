// psk_range.dart

import 'package:flutter/material.dart';

class PskRangeWidget extends StatelessWidget {
  const PskRangeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 24,
      color: const Color(0xffF7F7FA),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          'Диапазон ПСК 0-292% годовых',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Color(0xFF1A231E),
            height: 1.4,
          ),
        ),
      ),
    );
  }
}
