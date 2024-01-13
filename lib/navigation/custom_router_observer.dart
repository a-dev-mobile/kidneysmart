import 'package:flutter/material.dart';
import 'package:dartlog/dartlog.dart';


import 'package:kidneysmart/core/notifier/screen_tracker_notifier/screen_tracker_notifier.dart';

class CustomRouterObserver extends NavigatorObserver {
  CustomRouterObserver(this.screenTrackerNotifier);
  final ScreenTrackerNotifier screenTrackerNotifier;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    _updatePageTracker(route);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute != null) {
      _updatePageTracker(previousRoute);
    }
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    // _updatePageTracker(route);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute != null) {
      _updatePageTracker(newRoute);
    }
  }

  void _updatePageTracker(Route<dynamic> route) {
    Future.microtask(() {
      try {
        final currentPageName = route.settings.name;
        if (currentPageName != null) {
          screenTrackerNotifier.setScreen(currentPageName);
        } else {
          Logger.warning('CustomRouterObserver: Route name is null.');
        }
      } on Exception catch (e, s) {
        Logger.error('Error in CustomRouterObserver', e, s);
      }
    });
  }
}
