
part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  // const DebugState._();

  const factory SplashState({
    @Default(EnumPageStatus.init) EnumPageStatus enumPageStatus,

  }) = _DebugState;


}
