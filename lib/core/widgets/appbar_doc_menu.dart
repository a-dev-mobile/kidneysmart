import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/app/style/color/app_color.dart';
import 'package:kidneysmart/app/style/typography/app_text_styles.dart';
import 'package:kidneysmart/core/cubits/preloading/wp/wp_preloading_cubit.dart';
import 'package:kidneysmart/core/utils/status_bar_nav_helper.dart';
import 'package:kidneysmart/core/widgets/basic_button.dart';
import 'package:kidneysmart/core/widgets/custom_modal_bottom_sheet.dart';
import 'package:kidneysmart/feature/dashboard/pages/about_company/about_company_page.dart';
import 'package:kidneysmart/feature/dashboard/pages/documents/view/about_us_doc_page.dart';
import 'package:kidneysmart/feature/dashboard/pages/documents/view/templates_doc_page.dart';
import 'package:kidneysmart/feature/support_chat/support_chat_page.dart';
import 'package:kidneysmart/gen/assets.gen.dart';
import 'package:kidneysmart/global.dart';
import 'package:kidneysmart/navigation/app_router.dart';

class AppbarDocMenu extends StatelessWidget implements PreferredSizeWidget {
  const AppbarDocMenu({super.key, this.isHaveExit = false});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  final bool isHaveExit;
  @override
  Widget build(BuildContext context) {
    StatusBarNavHelpers.setLightIconsStatusBar();
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      title: SvgPicture.asset(
        AssetPaths.logoHeaderSvg,
      ),
      iconTheme: const IconThemeData(color: Colors.white),
      actions: [
        _buildIconButton(
          context,
          AssetPaths.iconChatSvg,
          _buildSupportModalContent,
        ),
        _buildIconButton(
          context,
          AssetPaths.iconMenuSvg,
          _buildMenuModalContent,
        ),
      ],
    );
  }

  Widget _buildSupportModalContent(BuildContext context) {
    final phone = context.read<WpPreloadingCubit>().state.phoneSupport;

    return Wrap(
      children: <Widget>[
        ListTile(
          leading: SvgPicture.asset(AssetPaths.iconPhoneSvg),
          title: const Text('Позвонить нам'),
          subtitle: const Text('Бесплатно по России'),
          onTap: () {
            AppRun.callSupport(
              phone,
            );
          },
        ),
        ListTile(
          leading: SvgPicture.asset(
            AssetPaths.iconChat2Svg,
          ),
          title: const Text('Чат с поддержкой'),
          onTap: () {
            context.pushNamed(SupportChatPage.name);
          },
        ),
      ],
    );
  }

  Widget _buildMenuModalContent(BuildContext context) {
    return Wrap(
      children: <Widget>[
        ListTile(
          leading: SvgPicture.asset(AssetPaths.iconDocSvg),
          title: const Text('Документы'),
          onTap: () => context.pushNamed(AboutUsDocPage.name),
        ),
        ListTile(
          leading: SvgPicture.asset(AssetPaths.iconDocSvg),
          title: const Text('Шаблоны заявлений'),
          onTap: () => context.pushNamed(TemplatesDocPage.name),
        ),
        ListTile(
          leading: SvgPicture.asset(AssetPaths.iconOfficeSvg),
          title: const Text('О компании'),
          onTap: () => context.pushNamed(AboutCompanyPage.name),
        ),
        if (isHaveExit) ...[
          ListTile(
            leading: SvgPicture.asset(
              AssetPaths.exitSvg,
            ),
            title: const Text(
              'Выйти из аккаунта',
              style: TextStyle(color: AppColors.greyLightText),
            ),
            onTap: () {
              showCustomModalBottomSheet(
                context: context,
                barrierColor: Colors.transparent,
                content: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Вы точно хотите выйти?',
                        style: AppTextStyle.s20w600h24,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Прогресс регистрации может быть утерян',
                        style: AppTextStyle.s14w400h18
                            .copyWith(color: AppColors.greyLightText),
                      ),
                      const SizedBox(height: 40),
                      BasicButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        text: 'Нет, остаться',
                      ),
                      const SizedBox(height: 20),
                      BasicButton(
                        isTextBtn: true,
                        onPressed: () {
                          context
                              .read<AppRouter>()
                              .exitApp(storage: context.read());
                        },
                        text: 'Да, выйти',
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ],
    );
  }

  // Вспомогательные функции и виджеты:

  IconButton _buildIconButton(
    BuildContext context,
    String assetPath,
    Widget Function(BuildContext context) modalContentBuilder,
  ) {
    return IconButton(
      onPressed: () {
        showCustomModalBottomSheet(
          context: context,
          content: modalContentBuilder(context),
        );
      },
      icon: SvgPicture.asset(assetPath),
    );
  }
}
