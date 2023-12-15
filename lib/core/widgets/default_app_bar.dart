import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kidneysmart/app/style/typography/app_text_styles.dart';
import 'package:kidneysmart/gen/assets.gen.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    required this.title,
    this.automaticallyImplyLeading = true,
    this.onBackPress,
    this.showBackButton = true,
    super.key,
  });

  final String title;
  final bool automaticallyImplyLeading;
  final VoidCallback? onBackPress;
  final bool showBackButton;

  static TextStyle get titleTextStyle => AppTextStyle.s20w600h24.copyWith(
        color: const Color(0xFF2E2E2E),
      );

  static Size get defaultPreferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Size get preferredSize => defaultPreferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      
      title: Text(
        title,
        style: titleTextStyle,
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      titleSpacing: 20,
      centerTitle: false,
      automaticallyImplyLeading: automaticallyImplyLeading,
    );
  }
}
