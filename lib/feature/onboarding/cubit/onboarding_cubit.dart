import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit({
    required AppStorage storage,
  })  : _storage = storage,
        super(OnboardingState());

  final AppStorage _storage;

  Future<void> complectOnboarding() async {
    await _storage.completeOnboarding();
    await _storage.completeFirstStart();
  }
}

class OnboardingState {}
