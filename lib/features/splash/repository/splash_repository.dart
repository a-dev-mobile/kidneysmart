import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/services/network/network_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_repository.g.dart';

abstract class SplashRepositoryProtocol {
  Future<void> login(String email, String password);

  Future<void> signUp(String name, String email, String password);
}

@riverpod
SplashRepository splashRepository(SplashRepositoryRef ref) {
  return SplashRepository(ref);
}

class SplashRepository implements SplashRepositoryProtocol {
  SplashRepository(this._ref);
  late final NetworkClient _api = _ref.read(networkClientProvider);


  final Ref _ref;
  
  @override
  Future<void> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }
  
  @override
  Future<void> signUp(String name, String email, String password) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
