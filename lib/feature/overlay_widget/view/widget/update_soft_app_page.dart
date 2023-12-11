import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kidneysmart/app/style/color/app_color.dart';
import 'package:kidneysmart/app/style/typography/app_text_styles.dart';
import 'package:kidneysmart/core/enum/enum_store.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';
import 'package:kidneysmart/core/widgets/basic_button.dart';
import 'package:kidneysmart/gen/assets.gen.dart';
import 'package:url_launcher/url_launcher.dart';

class UpdateSoftAppPage extends StatelessWidget {
  const UpdateSoftAppPage({
    this.store,
    super.key,
  });
  final EnumStore? store;
  static const path = '/UpdateSoftAppPage';
  static const name = 'UpdateSoftAppPage';
  @override
  Widget build(BuildContext context) {
    final _ = context.read<AppStorage>().setLastScreen(UpdateSoftAppPage.name);
    return Padding(
      padding: const EdgeInsets.only(right: 15, top: 30, left: 15, bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AssetPaths.logoImage,
            height: 48,
          ),
          const SizedBox(height: 20),
          const Text(
            'Доступна новая версия приложения!',
            style: AppTextStyle.s20w600h24,
          ),
          const SizedBox(height: 15),
          Text(
            'Обновите NadoDeneg, чтобы иметь доступ к новым функциям и возможностям',
            style: AppTextStyle.s16w400h20.copyWith(color: AppColors.greyText),
          ),
          const SizedBox(height: 20),
          BasicButton(
            onPressed: () => _runUrl(store?.url ?? EnumStore.unknown.url),
            text: 'Обновить',
          ),
          const SizedBox(height: 15),
          BasicButton(
            isTextBtn: true,
            onPressed: () => Navigator.of(context).pop(),
            text: 'Позже',
          ),
        ],
      ),
    );
  }

  Future<void> _runUrl(String value) async {
    final url = Uri.parse(value);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      // ignore: only_throw_errors
      throw 'Could not launch $url';
    }
  }
}
