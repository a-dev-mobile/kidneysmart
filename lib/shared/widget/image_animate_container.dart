import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageAnimateContainer extends StatelessWidget {
  const ImageAnimateContainer({
    required this.assetPaths,
    required this.heightMax,
    this.heightMin = 50,
    this.isKeyboardOpen = false,
    super.key,
  });
  final String assetPaths;
  final bool isKeyboardOpen;
  final double heightMax;
  final double heightMin;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isKeyboardOpen ? heightMin : heightMax,
      child: SizedBox(
        height: heightMax,
        child: SvgPicture.asset(assetPaths),
      ),
    );
  }
}
