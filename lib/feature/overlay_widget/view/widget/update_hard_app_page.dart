import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kidneysmart/app/style/color/app_color.dart';
import 'package:kidneysmart/app/style/typography/app_text_styles.dart';
import 'package:kidneysmart/core/enum/enum_store.dart';
import 'package:kidneysmart/core/storage/local_storage.dart';
import 'package:kidneysmart/core/widgets/basic_button.dart';
import 'package:kidneysmart/gen/assets.gen.dart';
import 'package:url_launcher/url_launcher.dart';

class UpdateHardAppPage extends StatelessWidget {
  const UpdateHardAppPage({
    this.store,
    super.key,
  });
  final EnumStore? store;
  static const path = '/UpdateHardAppPage';
  static const name = 'UpdateHardAppPage';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height -
                    2 * 15, // минимальная высота, с учетом отступов Padding
              ),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      AssetPaths.logoImage,
                      height: 48,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Приложение устарело!',
                      style: AppTextStyle.s20w600h24,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Для продолжения корректной работы приложения, пожалуйста, обновите приложение',
                      style: AppTextStyle.s16w400h20
                          .copyWith(color: AppColors.greyText),
                    ),
                    const SizedBox(height: 20),
                    BasicButton(
                      onPressed: () =>
                          _runUrl(store?.url ?? EnumStore.unknown.url),
                      text: 'Обновить',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
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
