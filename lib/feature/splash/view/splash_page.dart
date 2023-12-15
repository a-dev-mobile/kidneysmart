import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kidneysmart/api/api_client.dart';
import 'package:kidneysmart/core/enum/enum_page_status.dart';
import 'package:kidneysmart/core/storage/local_storage.dart';
import 'package:kidneysmart/core/widgets/app_error_widget.dart';
import 'package:kidneysmart/core/widgets/app_init_widget.dart';
import 'package:kidneysmart/core/widgets/app_load_widget.dart';

import 'package:kidneysmart/feature/splash/cubit/splash_cubit.dart';
import 'package:kidneysmart/navigation/app_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static const path = '/SplashPage';
  static const name = 'SplashPage';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => SplashCubit(
        router: context.read<AppRouter>(),
        storage: context.read<LocalStorage>(),
        client: context.read<ApiClient>(),
      )..load(),
      child: const _SplashView(),
    );
  }
}

class _SplashView extends StatelessWidget {
  const _SplashView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocSelector<SplashCubit, SplashState, EnumPageStatus>(
        selector: (state) => state.enumPageStatus,
        builder: (context, enumPageStatus) {
          return enumPageStatus.mapValue(
            init: const AppLoadWidget(loadingMessage: 'init'),
            load: const AppLoadWidget(loadingMessage: 'load'),
            success: Center(child: ElevatedButton(child: const Text("Throw Test Exception"), onPressed: () => throw Exception(),)),
            error: const AppErrorWidget(),
          );
        },
      ),
    );
  }
}
