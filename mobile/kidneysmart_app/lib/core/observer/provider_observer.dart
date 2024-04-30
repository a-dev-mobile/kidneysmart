import 'package:flutter_riverpod/flutter_riverpod.dart'
    show ProviderBase, ProviderContainer, ProviderObserver;
import 'package:dartlog/dartlog.dart';

class AppProviderObserver extends ProviderObserver {
  String _providerIdentity(ProviderBase<dynamic> provider) {
    return provider.name ?? provider.runtimeType.toString();
  }

  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    Logger.info(
      'Provider Updated: ${_providerIdentity(provider)} - Prev: $previousValue, New: $newValue',
    );
  }

  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) {
    Logger.debug(
      'Provider Added: ${_providerIdentity(provider)} - Value: $value',
    );
  }

  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    Logger.error(
      'Provider Error: ${_providerIdentity(provider)} - Error: $error',
      error,
      stackTrace,
    );
  }

  @override
  void didDisposeProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) {
    Logger.debug(
      'Provider Disposed: ${_providerIdentity(provider)}',
    );
  }
}
