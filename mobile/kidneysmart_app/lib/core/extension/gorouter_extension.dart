import 'package:dartlog/dartlog.dart';
import 'package:go_router/go_router.dart';
import 'package:dartlog/dartlog.dart';

extension SafeListAccess<T> on List<T> {
  T safeElementAt(int index, T defaultValue) {
    return index < length ? this[index] : defaultValue;
  }
}

extension GoRouterExtension on GoRouter {
  String? location() {
    try {
      final lastMatch = routerDelegate.currentConfiguration.last;
      final matchList = lastMatch is ImperativeRouteMatch
          ? lastMatch.matches
          : routerDelegate.currentConfiguration;
      final location = matchList.uri.toString();
      return location;
    } catch (e, s) {
      Logger.error('GoRouterExtension', e, s);
      return null;
    }
  }
}
