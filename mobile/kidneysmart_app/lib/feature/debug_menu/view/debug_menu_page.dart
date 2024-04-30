// ignore_for_file: unused_element, avoid-passing-async-when-sync-expected

import 'dart:async';
import 'dart:io';

import 'package:feedback/feedback.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kidneysmart/core/constants/app_text_styles.dart';

import 'package:kidneysmart/core/enum/enum_project.dart';
import 'package:kidneysmart/core/enum/enum_store.dart';
import 'package:kidneysmart/core/notifier/app_update_check/app_update_notifier.dart';
import 'package:kidneysmart/core/notifier/debug_notifier/debug_notifier.dart';
import 'package:kidneysmart/core/service/network/dio_log/http_log_list_widget.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';
import 'package:kidneysmart/core/widgets/app_error_screen.dart';

import 'package:kidneysmart/feature/overlay/view/widget/app_update_hard_page.dart';
import 'package:kidneysmart/feature/setting/view/setting_page.dart';

import 'package:kidneysmart/feature/splash/view/splash_page.dart';
import 'package:kidneysmart/feature/welcome/view/welcome_page.dart';
import 'package:kidneysmart/navigation/app_router.dart';

import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class DebugMenuPage extends ConsumerWidget {
  const DebugMenuPage({super.key});
  static const path = '/debug_page';
  static const name = 'debug-page';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final storage = context.read<LocalStorage>();
    // final go = context.read<AppRouter>();
    final state = ref.watch(debugNotifierProvider);
    final debugNotifier = ref.read(debugNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Debug Menu '),
      ),
      body: Stack(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => ref
                    .read(appUpdateNotifierProvider.notifier)
                    .check(isDebug: true),
                child: const Text('Force Update'),
              ),
              const Center(child: Text('---Setting---')),
              SwitchListTile(
                value: state.isShowBtnHttpLog,
                onChanged: (v) => debugNotifier.setShowBtnHttpLog(isShow: v),
                title: const Text('Show button http log'),
                dense: true,
                visualDensity: const VisualDensity(vertical: -3),
              ),
              SwitchListTile(
                value: state.isShowUrlPdfPage,
                onChanged: (v) => debugNotifier.setShowUrlPdfPage(isShow: v),
                title: const Text('Show opening url of PDF document'),
                dense: true,
                visualDensity: const VisualDensity(vertical: -3),
              ),
              if (kDebugMode)
                SwitchListTile(
                  value: state.isShowRepaintRainbow,
                  onChanged: (v) =>
                      debugNotifier.setShowDebugRepaintRainbow(isShow: v),
                  title: const Text('DebugRepaintRainbowEnabled'),
                  dense: true,
                  visualDensity: const VisualDensity(vertical: -3),
                ),
              if (kDebugMode)
                SwitchListTile(
                  value: state.isShowPaintSizeEnabled,
                  onChanged: (v) =>
                      debugNotifier.setShowPaintSizeEnabled(isShow: v),
                  title: const Text('DebugPaintSizeEnabled'),
                  dense: true,
                  visualDensity: const VisualDensity(vertical: -3),
                ),
              const SizedBox(height: 30),
              const Center(child: Text('---Начало---')),
              const Wrap(
                children: [
                  _ItemPage(name: 'splash', nameRoute: SplashPage.name),
                  _ItemPage(name: 'welcome', nameRoute: WelcomeScreen.name),
                  _ItemPage(name: 'setting', nameRoute: SettingPage.name),
                  _ItemPage(name: 'error', nameRoute: AppErrorScreen.name),
                ],
              ),
              const SizedBox(height: 30),
              const Center(child: Text('---Вход---')),
              const SizedBox(height: 30),
              const Center(
                child: Text('---Регистрация---'),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: ElevatedButton(
                  onPressed: () {
                    final _ = ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Successfully',
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    'Clear local storage',
                  ),
                ),
              ),
              const Wrap(),
              const SizedBox(height: 30),
              const Center(
                child: Text('---личный кабинет---'),
              ),
              const SizedBox(height: 30),
              const Center(child: Text('---Вспомогательные---')),
              Wrap(
                children: [
                  _ItemPage(
                    name: 'Общие документы',
                    onPressed: () {},
                  ),

                  // const _ItemPage(
                  // name: 'Soft Обновление',
                  // nameRoute: UpdateSoftAppPage.name,
                  // ),
                  const _ItemPage(
                    name: 'Hard Обновление',
                    nameRoute: AppUpdateHardPage.name,
                  ),
                  const SizedBox(height: 30),
                  const Center(child: Text('---Тестирование функционала---')),
                  const Wrap(
                    children: [
                      _ItemPage(
                        name: 'Http log',
                        nameRoute: HttpLogListWidget.name,
                      ),
                    ],
                  ),
                  const Divider(),
                  const SizedBox(height: 30),
                  const Center(child: Text('---API---')),
                  const Center(
                    child: Text(
                      'Для смены API нужно закрыть и открыть приложение',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.s12w600h17,
                    ),
                  ),
                  _RadioApi(
                    onChanged: (v) =>
                        debugNotifier.setEnumProject(enumProject: v),
                    activeEnumProject: state.enumProject,
                    enumProject: EnumProject.prod,
                    title: EnumProject.prod.name,
                  ),
                  _RadioApi(
                    onChanged: (v) =>
                        debugNotifier.setEnumProject(enumProject: v),
                    activeEnumProject: state.enumProject,
                    enumProject: EnumProject.dev,
                    title: EnumProject.dev.name,
                  ),
                  const Divider(),
                  const SizedBox(height: 30),
                  const Center(child: Text('---STORE---')),
                  const Center(
                    child: Text(
                      'Для смены Магазина нужно закрыть и открыть приложение',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.s12w600h17,
                    ),
                  ),
                  _RadioStore(
                    onChanged: debugNotifier.setEnumStore,
                    activeEnumStore: state.enumStore,
                    enumStore: EnumStore.appStore,
                    title: _getNameStore(EnumStore.appStore),
                  ),
                  _RadioStore(
                    onChanged: debugNotifier.setEnumStore,
                    activeEnumStore: state.enumStore,
                    enumStore: EnumStore.packageInstaller,
                    title: _getNameStore(EnumStore.packageInstaller),
                  ),
                  _RadioStore(
                    onChanged: debugNotifier.setEnumStore,
                    activeEnumStore: state.enumStore,
                    enumStore: EnumStore.unknown,
                    title: _getNameStore(EnumStore.unknown),
                  ),
                  const Divider(),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(
                      onPressed: () {
                        final _ = ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Данные отправлены',
                            ),
                          ),
                        );
                        throw Exception('Repeating test error');
                      },
                      child: const Text(
                        'Отправить тестовый crash в Crashlytics',
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              color: Theme.of(context).colorScheme.background,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  OutlinedButton(
                    onPressed: () async {
                      // if (go.router.canPop()) {
                      // go.router.pop();
                      // }
                      Navigator.of(context).pop();

                      BetterFeedback.of(context).show(
                        (feedback) async {
                          final screenshotFilePath =
                              await _writeImageToStorage(feedback.screenshot);

                          final _ = await Share.shareXFiles(
                            [XFile(screenshotFilePath)],
                            text: feedback.text,
                          );
                        },
                      );
                    },
                    child: const Text('FEEDBACK'),
                  ),
                  OutlinedButton(
                    onPressed: () async {
                      final go = ref.read(appRouterProvider);

                      await go.savingDebugStateAndCleanLocalStorage(ref);

                      go.router.goNamed(SplashPage.name);
                      // await _cleanCash(storage);
                    },
                    child: const Text('RESTART'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getNameStore(EnumStore enumStore) {
    return '${enumStore.name} ${enumStore.vendor}';
  }

  void _showCustomDialog(
    AppStorage storage,
    BuildContext context,
    String title,
  ) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          actions: <Widget>[
            TextButton(
              child: const Text('Отмена'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Text('Да'),
              onPressed: () async {
                // /    await _cleanCash(storage);
                exit(0);
              },
            ),
          ],
        );
      },
    );
  }

  Future<String> _writeImageToStorage(Uint8List feedbackScreenshot) async {
    final output = await getTemporaryDirectory();
    final screenshotFilePath = '${output.path}/feedback.png';
    final screenshotFile = File(screenshotFilePath);
    final _ = await screenshotFile.writeAsBytes(feedbackScreenshot);

    return screenshotFilePath;
  }
}

class _RadioApi extends StatelessWidget {
  const _RadioApi({
    required this.title,
    required this.enumProject,
    required this.activeEnumProject,
    super.key,
    this.onChanged,
  });

  final String title;
  final EnumProject enumProject;
  final EnumProject activeEnumProject;
  final void Function(EnumProject?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      horizontalTitleGap: 0,
      minVerticalPadding: 0,
      minLeadingWidth: 0,
      contentPadding: EdgeInsets.zero,
      child: RadioListTile<EnumProject>(
        title: Text(title),
        dense: true,
        visualDensity: const VisualDensity(vertical: -3),
        subtitle: Text(enumProject.api),
        groupValue: activeEnumProject,
        value: enumProject,
        onChanged: onChanged,
      ),
    );
  }
}

class _RadioStore extends StatelessWidget {
  const _RadioStore({
    required this.title,
    required this.enumStore,
    required this.activeEnumStore,
    super.key,
    this.onChanged,
  });

  final String title;
  final EnumStore enumStore;
  final EnumStore activeEnumStore;
  final void Function(EnumStore?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      horizontalTitleGap: 0,
      minVerticalPadding: 0,
      minLeadingWidth: 0,
      contentPadding: EdgeInsets.zero,
      child: RadioListTile<EnumStore>(
        title: Text(title),
        dense: true,
        visualDensity: const VisualDensity(vertical: -3),
        subtitle: Text(enumStore.packageId.toString()),
        groupValue: activeEnumStore,
        value: enumStore,
        onChanged: onChanged,
      ),
    );
  }
}

class _ItemPage extends StatelessWidget {
  const _ItemPage({
    required this.name,
    super.key,
    this.nameRoute,
    this.onPressed,
    this.isPushPage = true,
  });

  final String name;
  final bool isPushPage;
  final String? nameRoute;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: nameRoute != null
          ? () {
              isPushPage
                  ? GoRouter.of(context).pushNamed<void>(nameRoute!)
                  : GoRouter.of(context).goNamed(nameRoute!);
            }
          : onPressed,
      child: Text(
        name,
        style: AppTextStyle.s18w700h16,
      ),
    );
  }
}
