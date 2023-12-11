import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kidneysmart/api/api_client.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';
import 'package:kidneysmart/core/widgets/page_load.dart';
import 'package:kidneysmart/feature/splash/cubit/splash_cubit.dart';
import 'package:kidneysmart/navigation/app_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static const path = '/splash';
  static const name = 'Splash';

  @override
  Widget build(BuildContext context) {
    final _ = context.read<AppStorage>().setLastScreen(SplashPage.name);
    return BlocProvider(
      lazy: false,
      create: (context) => SplashCubit(
        router: context.read<AppRouter>(),
        storage: context.read<AppStorage>(),
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
    return const Scaffold(
      body: AppPageLoad(),
    );
  }
}
